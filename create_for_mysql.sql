CREATE DATABASE IF NOT EXISTS homeschoolDB;
USE homeschoolDB;

DROP TABLE IF EXISTS HAS_TAKEN;
CREATE TABLE HAS_TAKEN (
  taken BOOLEAN NOT NULL,
  stuID INT NOT NULL,
  subID INT NOT NULL,
  semester VARCHAR(20),
  PRIMARY KEY (stuID, subID)
);

CREATE TABLE STUDENTS (
  stuID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  stu_fname VARCHAR(20) NOT NULL,
  stu_lname VARCHAR(20) NOT NULL,
  stu_dob DATE NOT NULL,
  stu_email VARCHAR(50),
  stu_level INT NOT NULL,
  stu_gpa DECIMAL(3,2)
);

CREATE TABLE SUBJECTS (
  subID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  sub_name VARCHAR(20),
  core BOOLEAN,
  extr BOOLEAN,
  taken BOOLEAN,
  CONSTRAINT FK_SUBJECTS_HAS_TAKEN FOREIGN KEY (taken) REFERENCES HAS_TAKEN(taken)
);

CREATE TABLE GRADES (
  grID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  subID INT NOT NULL,
  grade_num INT,
  grade_letter VARCHAR(5),
  stuID INT NOT NULL,
  CONSTRAINT FK_GRADES_STUDENTS FOREIGN KEY (stuID) REFERENCES STUDENTS(stuID)
);

INSERT INTO STUDENTS (stu_fname, stu_lname, stu_dob, stu_email, stu_level, stu_gpa) VALUES
('John', 'Doe', '2010-05-15', 'john.doe@example.com', 8, 3.8);

INSERT INTO STUDENTS (stu_fname, stu_lname, stu_dob, stu_email, stu_level, stu_gpa) VALUES
('Jane', 'Doe', '2012-09-20', 'jane.doe@example.com', 6, 4.0);

INSERT INTO STUDENTS (stu_fname, stu_lname, stu_dob, stu_email, stu_level, stu_gpa) VALUES
('Michael', 'Doe', '2008-02-28', 'michael.doe@example.com', 10, 3.5);

INSERT INTO STUDENTS (stu_fname, stu_lname, stu_dob, stu_email, stu_level, stu_gpa) VALUES
('Emily', 'Doe', '2015-11-03', 'emily.doe@example.com', 3, NULL);

INSERT INTO STUDENTS (stu_fname, stu_lname, stu_dob, stu_email, stu_level, stu_gpa) VALUES
('William', 'Doe', '2013-07-12', 'william.doe@example.com', 5, 3.2);

INSERT INTO SUBJECTS (sub_name, core, extr) VALUES
('Math', TRUE, FALSE);

INSERT INTO SUBJECTS (sub_name, core, extr) VALUES
('Science', TRUE, FALSE);

INSERT INTO SUBJECTS (sub_name, core, extr) VALUES
('English', TRUE, FALSE);

INSERT INTO SUBJECTS (sub_name, core, extr) VALUES
('History', TRUE, FALSE);

INSERT INTO SUBJECTS (sub_name, core, extr) VALUES
('Art', FALSE, TRUE);

INSERT INTO SUBJECTS (sub_name, core, extr) VALUES
('Physical Education', FALSE, TRUE);

INSERT INTO SUBJECTS (sub_name, core, extr) VALUES
('Music', FALSE, TRUE);

INSERT INTO SUBJECTS (sub_name, core, extr) VALUES
('Drama', FALSE, TRUE);

INSERT INTO SUBJECTS (sub_name, core, extr) VALUES
('Computer Science', FALSE, TRUE);

INSERT INTO SUBJECTS (sub_name, core, extr) VALUES
('Foreign Language', FALSE, TRUE);

INSERT INTO HAS_TAKEN (stuID, subID, taken, semester) VALUES
(1, 1, TRUE, 'Fall 2023');

INSERT INTO HAS_TAKEN (stuID, subID, taken, semester) VALUES
(1, 2, TRUE, 'Spring 2024');

INSERT INTO HAS_TAKEN (stuID, subID, taken, semester) VALUES
(2, 1, TRUE, 'Fall 2023');

INSERT INTO HAS_TAKEN (stuID, subID, taken, semester) VALUES
(2, 3, TRUE, 'Spring 2024');

INSERT INTO HAS_TAKEN (stuID, subID, taken, semester) VALUES
(3, 1, TRUE, 'Fall 2023');

INSERT INTO HAS_TAKEN (stuID, subID, taken, semester) VALUES
(3, 2, TRUE, 'Fall 2023');

INSERT INTO HAS_TAKEN (stuID, subID, taken, semester) VALUES
(3, 4, TRUE, 'Spring 2024');

INSERT INTO HAS_TAKEN (stuID, subID, taken, semester) VALUES
(4, 1, TRUE, 'Fall 2023');

INSERT INTO HAS_TAKEN (stuID, subID, taken, semester) VALUES
(5, 1, TRUE, 'Fall 2023');

INSERT INTO HAS_TAKEN (stuID, subID, taken, semester) VALUES
(5, 5, TRUE, 'Spring 2024');

INSERT INTO HAS_TAKEN (stuID, subID, taken, semester) VALUES
(1, 6, TRUE, 'Fall 2023');

INSERT INTO GRADES (subID, stuID, grade_num, grade_letter) VALUES
(1, 1, 92, 'A');

INSERT INTO GRADES (subID, stuID, grade_num, grade_letter) VALUES
(2, 1, 88, 'B+');

INSERT INTO GRADES (subID, stuID, grade_num, grade_letter) VALUES
(1, 2, 95, 'A');

INSERT INTO GRADES (subID, stuID, grade_num, grade_letter) VALUES
(3, 2, 90, 'A-');

INSERT INTO GRADES (subID, stuID, grade_num, grade_letter) VALUES
(1, 3, 85, 'B');

INSERT INTO GRADES (subID, stuID, grade_num, grade_letter) VALUES
(2, 3, 80, 'B-');

INSERT INTO GRADES (subID, stuID, grade_num, grade_letter) VALUES
(4, 3, 92, 'A');

INSERT INTO GRADES (subID, stuID, grade_num, grade_letter) VALUES
(1, 4, 78, 'C+');

INSERT INTO GRADES (subID, stuID, grade_num, grade_letter) VALUES
(1, 5, 90, 'A-');

INSERT INTO GRADES (subID, stuID, grade_num, grade_letter) VALUES
(5, 5, 85, 'B');

INSERT INTO GRADES (subID, stuID, grade_num, grade_letter) VALUES
(6, 1, 95, 'A');
