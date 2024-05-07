CREATE DATABASE homeschoolDB;

CREATE TABLE HasTaken (
  taken varchar(5) NOT NULL PRIMARY KEY,
  stuID int NOT NULL,
  subID int NOT NULL,
  semester varchar(10),
  );

CREATE TABLE Students (
  stuID int NOT NULL PRIMARY KEY,
  stu_fname varchar(20) NOT NULL,
  stu_lname varchar(20) NOT NULL,
  stu_dob date NOT NULL,
  stu_email varchar(50),
  stu_level int NOT NULL,
  stu_gpa int
  );

CREATE TABLE Subjects (
  subID int NOT NULL PRIMARY KEY,
  sub_name varchar(20),
  core varchar(5),
  extr varchar(5),
  taken varchar(5) NOT NULL FOREIGN KEY REFERENCES HasTaken(taken)
);

CREATE TABLE Grades (
  grID int NOT NULL PRIMARY KEY,
  subID int NOT NULL,
  grade_num int,
  grade_letter varchar(5),
  stuID int NOT NULL FOREIGN KEY REFERENCES Students(stuID)
);
  
  
