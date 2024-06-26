CREATE DATABASE homeschoolDB;

DROP TABLE IF EXISTS HAS_TAKEN;
CREATE TABLE HAS_TAKEN (
  taken varchar(5) NOT NULL,
  stuID INT NOT NULL,
  subID INT NOT NULL,
  semester varchar(20),
  PRIMARY KEY (stuID, subID)
);

CREATE TABLE STUDENTS (
  stuID INT NOT NULL PRIMARY KEY,
  stu_fname varchar(20) NOT NULL,
  stu_lname varchar(20) NOT NULL,
  stu_dob date NOT NULL,
  stu_email varchar(50),
  stu_level INT NOT NULL,
  stu_gpa INT
  );

CREATE TABLE SUBJECTS (
  subID INT NOT NULL PRIMARY KEY,
  sub_name varchar(20),
  core varchar(5),
  extr varchar(5),
  taken varchar(5), 
  CONSTRAINT FK_SUBJECTS_HAS_TAKEN FOREIGN KEY (taken, subID) REFERENCES HAS_TAKEN(taken, subID)
);

CREATE TABLE GRADES (
  grID INT NOT NULL PRIMARY KEY,
  subID INT NOT NULL,
  grade_num INT,
  grade_letter varchar(5),
  stuID INT NOT NULL, 
  CONSTRAINT FK_GRADES_STUDENTS FOREIGN KEY (STUID) REFERENCES STUDENTS(STUID)
);

INSERT INTO STUDENTS (stuID, stu_fname, stu_lname, stu_dob, stu_email, stu_level, stu_gpa) VALUES
(1, 'John', 'Doe', '15-MAY-2010', 'john.doe@example.com', 8, 3.8);

INSERT INTO STUDENTS (stuID, stu_fname, stu_lname, stu_dob, stu_email, stu_level, stu_gpa) VALUES
(2, 'Jane', 'Doe', '20-SEPTEMBER-2012', 'jane.doe@example.com', 6, 4.0);

INSERT INTO STUDENTS (stuID, stu_fname, stu_lname, stu_dob, stu_email, stu_level, stu_gpa) VALUES
(3, 'Michael', 'Doe', '28-FEBRUARY-2008', 'michael.doe@example.com', 10, 3.5);

INSERT INTO STUDENTS (stuID, stu_fname, stu_lname, stu_dob, stu_email, stu_level, stu_gpa) VALUES
(4, 'Emily', 'Doe', '03-NOVEMBER-2015', 'emily.doe@example.com', 3, NULL);

INSERT INTO STUDENTS (stuID, stu_fname, stu_lname, stu_dob, stu_email, stu_level, stu_gpa) VALUES
(5, 'William', 'Doe', '12-JULY-2013', 'william.doe@example.com', 5, 3.2);

INSERT INTO SUBJECTS (subID, sub_name, core, extr) VALUES
(1, 'Math', 'Yes', 'No');

INSERT INTO SUBJECTS (subID, sub_name, core, extr) VALUES
(2, 'Science', 'Yes', 'No');

INSERT INTO SUBJECTS (subID, sub_name, core, extr) VALUES
(3, 'English', 'Yes', 'No');

INSERT INTO SUBJECTS (subID, sub_name, core, extr) VALUES
(4, 'History', 'Yes', 'No');

INSERT INTO SUBJECTS (subID, sub_name, core, extr) VALUES
(5, 'Art', 'No', 'Yes');

INSERT INTO SUBJECTS (subID, sub_name, core, extr) VALUES
(6, 'Physical Education', 'No', 'Yes')

INSERT INTO SUBJECTS (subID, sub_name, core, extr) VALUES
(7, 'Music', 'No', 'Yes');

INSERT INTO SUBJECTS (subID, sub_name, core, extr) VALUES
(8, 'Drama', 'No', 'Yes');

INSERT INTO SUBJECTS (subID, sub_name, core, extr) VALUES
(9, 'Computer Science', 'No', 'Yes');

INSERT INTO SUBJECTS (subID, sub_name, core, extr) VALUES
(10, 'Foreign Language', 'No', 'Yes');

INSERT INTO HAS_TAKEN (stuID, subID, taken, semester) VALUES
(1, 1, 'TRUE', 'Fall 2023');

INSERT INTO HAS_TAKEN (stuID, subID, taken, semester) VALUES
(1, 2, 'TRUE', 'Spring 2024');

INSERT INTO HAS_TAKEN (stuID, subID, taken, semester) VALUES
(2, 1, 'TRUE', 'Fall 2023');

INSERT INTO HAS_TAKEN (stuID, subID, taken, semester) VALUES
(2, 3, 'TRUE', 'Spring 2024');

INSERT INTO HAS_TAKEN (stuID, subID, taken, semester) VALUES
(3, 1, 'TRUE', 'Fall 2023');

INSERT INTO HAS_TAKEN (stuID, subID, taken, semester) VALUES
(3, 2, 'TRUE', 'Fall 2023');

INSERT INTO HAS_TAKEN (stuID, subID, taken, semester) VALUES
(3, 4, 'TRUE', 'Spring 2024');

INSERT INTO HAS_TAKEN (stuID, subID, taken, semester) VALUES
(4, 1, 'TRUE', 'Fall 2023');

INSERT INTO HAS_TAKEN (stuID, subID, taken, semester) VALUES
(5, 1, 'TRUE', 'Fall 2023');

INSERT INTO HAS_TAKEN (stuID, subID, taken, semester) VALUES
(5, 5, 'TRUE', 'Spring 2024');

INSERT INTO HAS_TAKEN (stuID, subID, taken, semester) VALUES
(1, 6, 'TRUE', 'Fall 2023');

INSERT INTO GRADES (grID, subID, stuID, grade_num, grade_letter) VALUES
(101, 1, 1, 92, 'A');

INSERT INTO GRADES (grID, subID, stuID, grade_num, grade_letter) VALUES
(102, 2, 1, 88, 'B+');

INSERT INTO GRADES (grID, subID, stuID, grade_num, grade_letter) VALUES
(201, 1, 2, 95, 'A');

INSERT INTO GRADES (grID, subID, stuID, grade_num, grade_letter) VALUES
(203, 3, 2, 90, 'A-');

INSERT INTO GRADES (grID, subID, stuID, grade_num, grade_letter) VALUES
(301, 1, 3, 85, 'B');

INSERT INTO GRADES (grID, subID, stuID, grade_num, grade_letter) VALUES
(302, 2, 3, 80, 'B-');

INSERT INTO GRADES (grID, subID, stuID, grade_num, grade_letter) VALUES
(304, 4, 3, 92, 'A');

INSERT INTO GRADES (grID, subID, stuID, grade_num, grade_letter) VALUES
(401, 1, 4, 78, 'C+');

INSERT INTO GRADES (grID, subID, stuID, grade_num, grade_letter) VALUES
(501, 1, 5, 90, 'A-');

INSERT INTO GRADES (grID, subID, stuID, grade_num, grade_letter) VALUES
(505, 5, 5, 85, 'B');

INSERT INTO GRADES (grID, subID, stuID, grade_num, grade_letter) VALUES
(106, 6, 1, 95, 'A');
