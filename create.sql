CREATE DATABASE homeschoolDB;

CREATE TABLE HASTAKEN (
  taken varchar(5) NOT NULL PRIMARY KEY,
  stuID INT NOT NULL,
  subID INT NOT NULL,
  semester varchar(10)
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
  CONSTRAINT FK_SUBJECTS_HAS_TAKEN FOREIGN KEY (TAKEN) REFERENCES "HAS_TAKEN"(TAKEN)
);

CREATE TABLE GRADES (
  grID INT NOT NULL PRIMARY KEY,
  subID INT NOT NULL,
  grade_num INT,
  grade_letter varchar(5),
  stuID INT NOT NULL, 
  CONSTRAINT FK_GRADES_STUDENTS FOREIGN KEY (STU_ID) REFERENCES STUDENTS(STU_ID)
);

INSERT INTO STUDENTS (stu_fname, stu_lname, stu_dob, stu_email, stu_level, stu_gpa) VALUES
('John', 'Doe', '15-05-2010', 'john.doe@example.com', 8, 3.8),
('Jane', 'Doe', '20-09-2012', 'jane.doe@example.com', 6, 4.0),
('Michael', 'Doe', '28-02-2008', 'michael.doe@example.com', 10, 3.5),
('Emily', 'Doe', '03-11-2015', 'emily.doe@example.com', 3, NULL),
('William', 'Doe', '12-07-2013', 'william.doe@example.com', 5, 3.2);

INSERT INTO SUBJECTS (subID, sub_name, core, extr) VALUES
(1, 'Math', 'Yes', 'No'),
(2, 'Science', 'Yes', 'No'),
(3, 'English', 'Yes', 'No'),
(4, 'History', 'Yes', 'No'),
(5, 'Art', 'No', 'Yes'),
(6, 'Physical Education', 'No', 'Yes'),
(7, 'Music', 'No', 'Yes'),
(8, 'Drama', 'No', 'Yes'),
(9, 'Computer Science', 'No', 'Yes'),
(10, 'Foreign Language', 'No', 'Yes');

INSERT INTO HASTAKEN (stuID, subID, taken, semester) VALUES
(1, 1, TRUE, 'Fall 2023'),
(1, 2, TRUE, 'Spring 2024'),
(2, 1, TRUE, 'Fall 2023'),
(2, 3, TRUE, 'Spring 2024'),
(3, 1, TRUE, 'Fall 2023'),
(3, 2, TRUE, 'Fall 2023'),
(3, 4, TRUE, 'Spring 2024'),
(4, 1, TRUE, 'Fall 2023'),
(5, 1, TRUE, 'Fall 2023'),
(5, 5, TRUE, 'Spring 2024'),
(1, 6, TRUE, 'Fall 2023');

INSERT INTO GRADES (subID, stuID, grade_num, grade_letter) VALUES
(1, 1, 92, 'A'),
(2, 1, 88, 'B+'),
(1, 2, 95, 'A'),
(3, 2, 90, 'A-'),
(1, 3, 85, 'B'),
(2, 3, 80, 'B-'),
(4, 3, 92, 'A'),
(1, 4, 78, 'C+'),
(1, 5, 90, 'A-'),
(5, 5, 85, 'B'),
(6, 1, 95, 'A');
