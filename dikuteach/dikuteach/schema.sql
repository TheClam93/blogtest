DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS courses;
DROP TABLE IF EXISTS teaches;
DROP TABLE IF EXISTS roles;
CREATE TABLE users (
  userid integer primary key autoincrement,
  name text not null
);

CREATE TABLE courses (
  courseid integer primary key autoincrement,
  name text not null,
  time integer not null
);

CREATE TABLE teaches (
  teachid integer primary key autoincrement,
  teacher_id integer not null,
  course_id integer not null,
  workdescription text not null,
  workhours integer not null,
  FOREIGN KEY(teacher_id) REFERENCES users(userid),
  FOREIGN KEY(course_id) REFERENCES courses(courseid)
);

CREATE TABLE roles (
  roleid integer primary key autoincrement,
  rolehaver_id integer not null,
  rolename text not null,
  roledescription text not null,
  teachinghours integer not null,
  FOREIGN KEY(rolehaver_id) REFERENCES users(userid)
);
