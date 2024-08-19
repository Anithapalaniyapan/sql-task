CREATE DATABASE College_StudentsData_Management_System;
USE College_StudentsData_Management_System;

CREATE TABLE department (
    Department_ID INT PRIMARY KEY AUTO_INCREMENT,
    Department_Name VARCHAR(100),
    HOD_Name VARCHAR(100)
);

INSERT INTO department (Department_Name, HOD_Name) 
VALUES('Computer Science', 'Dr. P. Nanthini'),
('Information Technology', 'Dr. K. Muthukannan'),
('Mechanical Engineering', 'Dr. K. Boopathi'),
('Agriculture', 'Dr. P. Mohan'),
('Artificial Intelligence and Data Science', 'Dr. M. Palanivel'),
('BioMedical Engineering', 'Dr. M. Dharani');

CREATE TABLE transportation (
    Bus_ID INT PRIMARY KEY AUTO_INCREMENT,
    Bus_Number VARCHAR(10) NOT NULL
);

INSERT INTO transportation (Bus_Number) 
VALUES('101'),
('102'),
('103'),
('104'),
('105');

CREATE TABLE faculty (
    Faculty_ID INT PRIMARY KEY AUTO_INCREMENT,
    Faculty_name VARCHAR(100),
    Qualification VARCHAR(100),
    Specialization VARCHAR(100),
    Salary DECIMAL(10,2),
    Email VARCHAR(100),
    Department_ID INT,
    FOREIGN KEY (Department_ID) REFERENCES department(Department_ID)
);

INSERT INTO faculty (Faculty_name, Qualification, Specialization, Salary, Email, Department_ID)
 VALUES('Mr.A.Kumar', 'M.Tech', 'Machine Learning', 80000.00, 'kumar@shanmugha.edu.in', 1),
('Mr.M.Venkatesh', 'M.Tech', 'Cybersecurity', 85000.00, 'venkatesh@shanmugha.edu.in', 2),
('Ms.P.Sharma', 'M.Tech', 'Data Science', 82000.00, 'sharma@shanmugha.edu.in', 1),
('Ms.S.Deepa', 'M.Tech', 'Software Engineering', 83000.00, 'deepa@shanmugha.edu.in', 1),
('Ms.P.Dhanush', 'M.Tech', 'Artificial Intelligence', 84000.00, 'dhanush@shanmugha.edu.in', 1),
('Mr.N.Madhavan', 'M.Tech', 'Information Systems', 85000.00, 'madhavan@shanmugha.edu.in', 2),
('Mr.M.Kaviraj', 'M.Tech', 'Network Security', 86000.00, 'kaviraj@shanmugha.edu.in', 2),
('Mr.K.Vasanth Kumar','M.Tech', 'Robotics', 87000.00, 'vasanthkumar@shanmugha.edu.in', 3),
('Mr.J.Thamayanthi', 'M.Tech', 'Thermodynamics', 88000.00, 'thamayanthi@shanmugha.edu.in', 3),
('Ms.K.Kalaivani', 'M.Tech', 'Agricultural Engineering', 89000.00, 'kalaivani@shanmugha.edu.in', 4),
('Mr.M.Jeevadharani', 'M.Tech', 'Plant Science', 90000.00, 'jeevadharani@shanmugha.edu.in', 4),
('Mr.L.Yuvapriya', 'M.Tech', 'Data Analytics', 91000.00, 'yuvapriya@shanmugha.edu.in', 5),
('Ms.A.Harini', 'M.Tech', 'Biomedical Imaging', 92000.00, 'harini@shanmugha.edu.in', 6),
('Mr.N.Harini priya', 'M.Tech', 'Bioinformatics', 93000.00, 'harinipriya@shanmugha.edu.in', 6);

CREATE TABLE course (
    Course_ID INT PRIMARY KEY AUTO_INCREMENT,
    Course_name VARCHAR(100),
    Duration INT,
    Credits INT,
    Department_ID INT,
    FOREIGN KEY (Department_ID) REFERENCES department(Department_ID)
);

INSERT INTO course (Course_name, Duration, Credits, Department_ID)
 VALUES('B.Tech Computer Science Engineering', 4, 160, 1),
('B.Tech Software Engineering', 4, 160, 1),
('B.Tech Information Technology Engineering', 4, 160, 2),
('B.Tech Network Engineering', 4, 160, 2),
('B.Tech Mechanical Engineering', 4, 160, 3),
('B.Tech Mechatronics Engineering', 4, 160, 3),
('B.Tech Agricultural Engineering', 4, 160, 4),
('B.Tech Food Technology', 4, 160, 4),
('B.Tech Artificial Intelligence Engineering', 4, 160, 5),
('B.Tech Data Analytics Engineering', 4, 160, 5),
('B.Tech Biomedical Engineering', 4, 160, 6),
('B.Tech Biotechnology Engineering', 4, 160, 6);

CREATE TABLE Subjects (
    Subject_ID INT PRIMARY KEY AUTO_INCREMENT,
    Subject_name VARCHAR(100),
    Credits INT,
    Semester INT,
    Course_ID INT,
    FOREIGN KEY (Course_ID) REFERENCES course(Course_ID)
);


INSERT INTO Subjects (Subject_name, Credits, Semester, Course_ID) 
VALUES('Programming in C', 4, 1, 1), 
('Data Structures', 4, 2, 2),
('Database Management Systems', 4, 4, 1),
('Computer Organization', 4, 1, 3),  
('Software Engineering', 4, 3, 4),
('Networking', 4, 5, 4),
('Engineering Mechanics', 4, 1, 5), 
('Thermodynamics', 4, 2, 6),
('Fluid Mechanics', 4, 4, 5),
('Introduction to Agriculture', 4, 1, 7),
('Soil Science', 4, 2, 8),
('Crop Production', 4, 4, 8),
('Fundamentals of Artificial Intelligence', 4, 1, 9),  
('Machine Learning', 4, 3, 10),
('Data Science with Python', 4, 5, 9),
('Biomedical Instrumentation', 4, 1, 11),
('Biomaterials', 4, 2, 12),
('Medical Imaging', 4, 4, 12);


CREATE TABLE faculty_subject (
    Faculty_ID INT,
    Subject_ID INT,
    PRIMARY KEY (Faculty_ID, Subject_ID),
    FOREIGN KEY (Faculty_ID) REFERENCES faculty(Faculty_ID),
    FOREIGN KEY (Subject_ID) REFERENCES subjects(Subject_ID)
);

INSERT INTO faculty_subject (Faculty_ID, Subject_ID) 
VALUES(1, 1),
(1, 2),
(2, 3), 
(3, 4), 
(3, 5), 
(4, 6),
(5, 7), 
(5, 8), 
(6, 9), 
(7, 10), 
(8, 11), 
(9, 12), 
(10, 13), 
(11, 14),
(12, 15), 
(13, 16), 
(14, 17); 


CREATE TABLE hostel (
    Hostel_ID INT PRIMARY KEY AUTO_INCREMENT,
    Hostel_Name VARCHAR(100),
    Hostel_Type ENUM('Boys', 'Girls')
);

INSERT INTO hostel (Hostel_Name, Hostel_Type) 
VALUES('Boys Hostel 1', 'Boys'),
('Girls Hostel 1', 'Girls'),
('Boys Hostel 2', 'Boys'),
('Girls Hostel 2', 'Girls'),
('Boys Hostel 3', 'Boys'),
('Girls Hostel 3', 'Girls'),
('Boys Hostel 4', 'Boys'),
('Girls Hostel 4', 'Girls'),
('Boys Hostel 5', 'Boys'),
('Girls Hostel 5', 'Girls'),
('Boys Hostel 6', 'Boys'),
('Girls Hostel 6', 'Girls'),
('Boys Hostel 7', 'Boys'),
('Girls Hostel 7', 'Girls'),
('Boys Hostel 8', 'Boys'),
('Girls Hostel 8', 'Girls'),
('Boys Hostel 9', 'Boys'),
('Girls Hostel 9', 'Girls'),
('Boys Hostel 10', 'Boys'),
('Girls Hostel 10', 'Girls'),
('Girls Hostel 15', 'Girls');


CREATE TABLE student_details (
    Student_ID INT PRIMARY KEY AUTO_INCREMENT,
    Fullname VARCHAR(100),
    DOB DATE,
    Phone_no VARCHAR(15),
    Email VARCHAR(100),
    Gender VARCHAR(10),
    Age INT,
    Department_ID INT,
    Hostel_ID INT NULL,
    Bus_ID INT NULL,
    FOREIGN KEY (Department_ID) REFERENCES department(Department_ID),
    FOREIGN KEY (Hostel_ID) REFERENCES hostel(Hostel_ID),
    FOREIGN KEY (Bus_ID) REFERENCES transportation(Bus_ID)
);

INSERT INTO student_details(Fullname, DOB, Phone_no, Email, Gender,Age, Department_ID, Hostel_ID, Bus_ID) 
VALUES('Anitha Palaniyappan','2004-01-20','9234567891','anitha@shanmugha.edu.in','Female', 20,2, NULL,1),
('Dharanisri Raman','2005-02-20','9876543219' ,'Dharanisri@shanmugha.edu.in','Female', 19, 2,NULL,2),
('Thamayanthi Jayaprakash','2004-03-20','6734595676','Thamayanthi@shanmugha.edu.in', 'Female', 20,2, NULL,1),
('Deepa Selvakumar','2005-04-20','6453892825','Deepa@shanmugha.edu.in', 'Female', 19,2,NULL,2),
('Nandhini murugan','2005-05-20','9876543219','Nandhini@shanmugha.edu.in', 'Female', 19, 2,12,NULL),
('Aaliya Hussain','2005-01-20','1234561769','Aaliya@shanmugha.edu.in', 'Female', 19,2, 2,NULL),
('Kaviraj mani','2004-06-20','6698431256','Kaviraj@shanmugha.edu.in', 'Male', 21,1,NULL,1),
('Jayasri Seenu','2004-08-20','9876542354','Jayasri@shanmugha.edu.in', 'Female', 21,3, 6,NULL),
('Gopika Ravi','2005-02-20','6543219879','Gopika@shanmugha.edu.in', 'Female', 20, 4,NULL,1),
('Janarthini srinivasan','2004-05-20','7698231256','Janarthini@shanmugha.edu.in', 'Female', 21,5, NULL,2),
('Sowmiya Manikandan','2005-08-20', '9876543219','Sowmiya@shanmugha.edu.in','Female', 20,5, 4,NULL),
('Srimathi Nagarajan','2005-09-20','8976543256','Srimathi@shanmugha.edu.in', 'Female', 19, 5, 8,NULL),
('Rohini Balan','2005-02-20','8743568756', 'Rohini@shanmugha.edu.in','Female', 20,5, 10,NULL),
('Sangeetha Venkadesh','2003-06-20','6745328976','Sangeetha@shanmugha.edu.in', 'Female', 21,5, 12,NULL),
('Karthiga Nagarajan','2004-08-20','6767766767','Karthiga@shanmugha.edu.in', 'Female', 20, 5,12,NULL),
('Sajitha Govindhasamy','2005-09-20','9898989898', 'Sajitha@shanmugha.edu.in','Female', 20,4, 10,NULL),
('Dinesh Neelakandan','2005-01-20','76332323223','Dinesh@shanmugha.edu.in', 'Male', 19,6, 1,NULL),
('Kavinkumar Duraisamy','2003-02-20','8976767676','Kavinkumar@shanmugha.edu.in', 'Male', 19 ,6, 3,NULL),
('Sadurdeva Saravanan','2003-03-20','6509090909','Sadurdeva@shanmugha.edu.in', 'Male', 19, 6, 4,NULL),
('Udhayakumar Mariyappan','2004-07-20','6578878778','Udhayakumar@shanmugha.edu.in', 'Male', 20,  3,7,NULL),
('AswinRaj Karthikeyan','2004-08-20','6565656578', 'AswinRaj@shanmugha.edu.in','Male', 20, 1, 5,NULL),
('Ranganayagi Sekar','2004-10-20','8686868686','Ranganayagi @shanmugha.edu.in','Female', 20, 6,NULL,2),
('Nandhini Saravanan','2004-12-20','78787878787','Nandhini@shanmugha.edu.in', 'Female', 20, 5, 2,NULL),
('Moulidharan Thirumoorthy','2004-04-20','9876543213','Moulidharan@shanmugha.edu.in', 'Male', 20, 1, NULL,2),
('MadhanRaj Sekar','2003-07-20','67676767676', 'MadhanRaj@shanmugha.edu.in','Male', 21,1, NULL,1),
('Arun Senthil','2005-09-20','6578878778', 'Arun@shanmugha.edu.in','Male', 19,1, 7,NULL),
('Dhanush Ponnusamy','2005-02-20','6509090909', 'Dhanush@shanmugha.edu.in','Male', 21, 3, 9,NULL),
('Sowmiya Sasikumar','2003-05-20','76332323223','Sowmiya@shanmugha.edu.in','Female', 19, 3, 2,NULL),
('Janani Sankar','2005-07-20','6592876454', 'anitha@shanmugha.edu.in','Female', 20,  3,8,NULL),
('Priyadharshini Balamurugan','2005-01-20','6548973476','Priyadharshini@shanmugha.edu.in', 'Female', 20,3, 10,NULL),
('Kalaivani Somasundram','2005-04-20','6583976565','Kalaivani@shanmugha.edu.in', 'Female', 20, 4,NULL,1),
('Jeevadharani Murugan','2005-10-20','9366790634','Jeevadharani@shanmugha.edu.in','Female', 20, 4, NULL,2),
('KaviDharani Balamurugan','2005-03-20','9123456782','KaviDharan@shanmugha.edu.in', 'Female', 20, 6, NULL,1),
('Kaviya Karthikeyen','2005-11-20','9876543219','Kaviya@shanmugha.edu.in', 'Female', 20,4, 4,NULL),
('Dharshini Somasundram','2005-02-20', '9876543210','Dharshini@shanmugha.edu.in','Female', 20, 6, 4,NULL),
('Senpagam Murugasen','2005-05-20', '9876543219','Senpagam@shanmugha.edu.in','Female', 19, 1, NULL,2),
('Bharath Jayaprakash','2005-07-20','9876543210','Jayaprakash@shanmugha.edu.in', 'Male', 19, 5,9,NULL),
('Agalya Naveen','2004-08-20','9876543210', ' Naveen@shanmugha.edu.in','Female', 19, 4, 9,NULL),
('Saran Thangarajan','2002-10-20','9354789765', 'Saran@shanmugha.edu.in','male', 21,6, 9,NULL),
('Thanya Arjun','2003-12-20','9876543219','ThanyaArjun@shanmugha.edu.in', 'Female', 20, 6,NULL,1),
('Abisheik Karthik','2005-06-20','9876543210','Abisheik@shanmugha.edu.in', 'Male', 20,2, 3,NULL);

CREATE TABLE student_course (
    Student_ID INT,
    Course_ID INT,
    Enrolment_date DATE,
    PRIMARY KEY (Student_ID, Course_ID),
    FOREIGN KEY (Student_ID) REFERENCES student_details(Student_ID),
    FOREIGN KEY (Course_ID) REFERENCES course(Course_ID)
);

INSERT INTO student_course (Student_ID, Course_ID, Enrolment_date) 
VALUES(1, 1, '2024-04-01'),
(2, 2, '2024-05-15'),
(3, 1, '2024-04-01'),
(4, 2, '2024-05-15'),
(5, 1, '2024-04-01'),
(10, 2, '2024-05-15'),
(11, 1, '2024-04-01'),
(12, 2, '2024-05-15'),
(13, 1, '2024-04-01'),
(14, 2, '2024-05-15'),
(15, 1, '2024-04-01'),
(20, 2, '2024-05-15'),
(21, 1, '2024-04-01'),
(22, 2, '2024-05-05'),
(23, 1, '2024-04-01');

CREATE TABLE Fees (
    Fees_ID INT PRIMARY KEY AUTO_INCREMENT,
    Student_ID INT,
    Amount DECIMAL(10,2),
    Fees_type VARCHAR(50),
    Due_date DATE,
    Fees_Status VARCHAR(20),
    Payment_status VARCHAR(20),
    FOREIGN KEY (Student_ID) REFERENCES student_details(Student_ID)
);


INSERT INTO Fees (Student_ID, Amount, Fees_type ,Due_Date,  Fees_Status , Payment_status)
VALUES(1, 500.00,'Tuition','2024-09-01', 'Paid', '2024-08-15'),
(2, 650.00,'Tuition','2024-09-05', 'Unpaid', NULL),
(3, 700.00,'Tuition','2024-09-10', 'Paid', '2024-08-16'),
(4, 450.00,'Tuition', '2024-09-15', 'Unpaid', NULL),
(5, 500.00,'Hostel','2024-09-20', 'Paid', '2024-08-17'),
(8, 300.00,'Transportation','2024-09-25', 'Overdue', NULL),
(7, 550.00,'Hostel', '2024-09-01', 'Paid', '2024-08-28'),
(9, 600.00,'Transportation', '2024-09-05', 'Unpaid', NULL),
(5, 700.00,'Tuition','2024-09-10', 'Paid', '2024-08-29'),
(10, 800.00,'Hostel','2024-09-15', 'Paid', '2024-09-02'),
(11, 350.00,'Tuition', '2024-09-20', 'Unpaid', NULL),
(12, 400.00,'Tuition','2024-09-25', 'Overdue', NULL),
(13, 500.00,'Tuition', '2024-09-01', 'Paid', '2024-08-12'),
(14, 750.00,'Tuition','2024-09-05', 'Paid', '2024-08-13'),
(15, 650.00,'Tuition','2024-09-10', 'Unpaid', NULL),
(21, 600.00,'Transportation', '2024-09-15', 'Paid', '2024-09-03'),
(22, 850.00,'Hostel','2024-09-20', 'Unpaid', NULL),
(23, 950.00,'Transportation', '2024-09-25', 'Overdue', NULL),
(24, 850.00,'Transportation','2024-09-01', 'Paid', '2024-08-15'),
(25, 700.00,'Hostel','2024-09-05', 'Paid', '2024-08-20'),
(26, 450.00,'Hostel','2024-09-10', 'Unpaid', NULL),
(27, 500.00,'Hostel', '2024-09-25', 'Paid', '2024-09-10');

CREATE TABLE exam (
    Exam_ID INT PRIMARY KEY AUTO_INCREMENT,
    Exam_name VARCHAR(100),
    Exam_date DATE,
    Exam_Time TIME,
    Duration INT,
    Subject_ID INT,
    FOREIGN KEY (Subject_ID) REFERENCES subjects(Subject_ID)
);

INSERT INTO exam (Exam_name, Exam_date,  Exam_Time, Duration, Subject_ID)
 VALUES('Final Exam', '2024-05-01', '10:00:00', 180, 1),
('Final Exam', '2024-06-15', '14:00:00', 180, 2),
('Final Exam', '2024-05-01', '10:00:00', 180, 3),
('Final Exam', '2024-06-15', '14:00:00', 180, 4),
('Final Exam', '2024-05-01', '10:00:00', 180, 5),
('Final Exam', '2024-06-15', '14:00:00', 180, 6),
('Final Exam', '2024-05-01', '10:00:00', 180, 7),
('Final Exam', '2024-06-15', '14:00:00', 180, 8),
('Final Exam', '2024-05-01', '10:00:00', 180, 9),
('Final Exam', '2024-06-15', '14:00:00', 180, 10),
('Final Exam', '2024-05-01', '10:00:00', 180, 11),
('Final Exam', '2024-06-15', '14:00:00', 180, 12),
('Final Exam', '2024-05-01', '10:00:00', 180, 13),
('Final Exam', '2024-06-15', '14:00:00', 180, 14),
('Final Exam', '2024-05-01', '10:00:00', 180, 15);


CREATE TABLE student_exam (
    Student_ID INT,
    Exam_ID INT,
    Score DECIMAL(5,2),
    PRIMARY KEY (Student_ID, Exam_ID),
    FOREIGN KEY (Student_ID) REFERENCES student_details(Student_ID),
    FOREIGN KEY (Exam_ID) REFERENCES exam(Exam_ID)
);

INSERT INTO student_exam (Student_ID, Exam_ID, Score) 
VALUES(1, 1, 88.5),
(2, 2, 75.0),
(3, 3, 88.5),
(4, 4, 75.0),
(5, 5, 88.5),
(10, 6, 75.0),
(11 ,7, 88.5),
(12, 8, 75.0),
(13, 9, 88.5),
(14, 10, 75.0),
(15, 11, 88.5),
(20, 12, 75.0),
(21, 13, 88.5),
(22, 14, 75.0),
(23, 15, 88.5);



CREATE TABLE Books (
    Book_ID INT AUTO_INCREMENT PRIMARY KEY,
    Title VARCHAR(255),
    Author VARCHAR(255),
    Publisher VARCHAR(255),
    Year_of_publication INT,
    Available_Copies INT
);

INSERT INTO Books (Title, Author, Publisher, Year_of_publication, Available_Copies)
VALUES('Introduction to Algorithms', 'Thomas H. Cormen', 'MIT Press', 2009, 5),
('Clean Code', 'Robert C. Martin', 'Prentice Hall', 2008, 10),
('The Pragmatic Programmer', 'Andrew Hunt', 'Addison-Wesley', 1999, 7),
('Design Patterns', 'Erich Gamma', 'Addison-Wesley', 1994, 3),
('Code Complete', 'Steve McConnell', 'Microsoft Press', 2004, 8),
('Refactoring', 'Martin Fowler', 'Addison-Wesley', 1999, 4),
('The Art of Computer Programming', 'Donald Knuth', 'Addison-Wesley', 1968, 2),
('Cracking the Coding Interview', 'Gayle Laakmann McDowell', 'CareerCup', 2015, 12),
('Head First Design Patterns', 'Eric Freeman', 'O\'Reilly Media', 2004, 6),
('Effective Java', 'Joshua Bloch', 'Addison-Wesley', 2008, 9),
('You Don\'t Know JS', 'Kyle Simpson', 'O\'Reilly Media', 2015, 11),
('JavaScript: The Good Parts', 'Douglas Crockford', 'O\'Reilly Media', 2008, 5),
('Eloquent JavaScript', 'Marijn Haverbeke', 'No Starch Press', 2014, 10),
('Python Crash Course', 'Eric Matthes', 'No Starch Press', 2016, 7),
('Automate the Boring Stuff with Python', 'Al Sweigart', 'No Starch Press', 2015, 8),
('Fluent Python', 'Luciano Ramalho', 'O\'Reilly Media', 2015, 4),
('Learning Python', 'Mark Lutz', 'O\'Reilly Media', 2013, 6),
('Python Cookbook', 'David Beazley', 'O\'Reilly Media', 2013, 5),
('Compilers: Principles, Techniques, and Tools', 'Alfred V. Aho', 'Pearson', 2006, 4);

CREATE TABLE Library (
    Issue_ID VARCHAR(100) PRIMARY KEY,
    Student_ID INT,
    Book_ID INT,
    Issue_Date DATE,
    Return_Date DATE,
    FOREIGN KEY (Student_ID) REFERENCES Student_details(Student_ID),
    FOREIGN KEY (Book_ID) REFERENCES Books(Book_ID)
);


INSERT INTO Library (Issue_ID, Student_ID, Book_ID, Issue_Date, Return_Date)
VALUES
('1A2B', 1, 1, '2024-08-01', '2024-08-15'),
('1B2C', 2, 2, '2024-08-02', '2024-08-16'),
('1E3F',3, 3, '2024-08-05', '2024-08-19'),
('1G2G',4, 4, '2024-08-06', '2024-08-20'),
('1G2H',5, 5, '2024-08-07', '2024-08-21'),
('1H2I',6, 6, '2024-08-08', '2024-08-22'),
('1I2J',7, 7, '2024-08-09', '2024-08-23'),
('1J2K',8, 8, '2024-08-10', '2024-08-24'),
('1K2L',9, 9, '2024-08-11', '2024-08-25'),
('1L2M',12, 12, '2024-08-12', '2024-08-26'),
('1M2N',13, 13, '2024-08-13', '2024-08-27'),
('1N2O',14, 14, '2024-08-14', '2024-08-28'),
('1O2P',15, 15, '2024-08-15', '2024-08-29'),
('1P2Q',16, 16, '2024-08-16', '2024-08-30'),
('1Q2R',17, 17, '2024-08-17', '2024-08-31'),
('1R2S',18, 18, '2024-08-18', '2024-09-01'),
('1S2T',19, 19, '2024-08-19', '2024-09-02');



CREATE TABLE classroom (
    Room_no VARCHAR(10) PRIMARY KEY,
    classes VARCHAR(20),
    Department_ID INT,
    FOREIGN KEY (Department_ID) REFERENCES department(Department_ID)
);

INSERT INTO classroom (Room_no,classes,Department_ID)
 VALUES('101','Lecture Hall 1',1),
('102','Lecture Hall 2',2),
('103','Lecture Hall 3',3),
('104','Computer Lab',2),
('105','Lecture Hall 4',4),
('106','Lecture Hall 5',5),
('107','Library',2),
('108','Lecture Hall 6',6),
('109','Computer Lab',1);



CREATE TABLE College_event (
    Event_ID INT PRIMARY KEY AUTO_INCREMENT,
    Event_name VARCHAR(100),
    Date DATE,
    Venue VARCHAR(100),
    Department_ID INT,
    FOREIGN KEY (Department_ID) REFERENCES department(Department_ID)
);

INSERT INTO College_event (Event_name, Date, Venue, Department_ID) 
VALUES('Annual Tech Fest','2024-04-10', 'Auditorium', 1),
('Inter-College Sports Meet','2024-05-20', 'Sports Ground', 2),
('Cybersecurity Awareness Event','2024-10-30','IT Center', 2),
('Mechanical Engineering Workshop','2024-06-05','Workshop Hall', 3),
('Agricultural Innovation Seminar','2024-07-10','Conference Room', 4),
('AgriTech Expo','2024-09-15','Campus Exhibition Hall', 4),
('Guest Lecture on AI','2024-03-15','Lecture Hall 2', 5),
('Biomedical Research Symposium','2024-08-25',' Auditorium', 6);




CREATE TABLE student_event (
    Student_ID INT,
    Event_ID INT,
    PRIMARY KEY (Student_ID, Event_ID),
    FOREIGN KEY (Student_ID) REFERENCES student_details(Student_ID),
    FOREIGN KEY (Event_ID) REFERENCES College_event(Event_ID)
);

INSERT INTO student_event (Student_ID, Event_ID) 
VALUES(23, 1),
(24, 2),
(2, 1),
(3, 2),
(19, 1),
(26, 2),
(8, 1),
(31, 2),
(14, 1),
(15, 2),
(21, 1),
(39, 2);


SELECT
    sd.Student_ID,
    sd.Fullname,
    sd.DOB,
    sd.Email,
    d.Department_Name,
    d.HOD_Name AS Department_HOD,
    s.subject_name,
    s.credits,
    s.Semester,
    cr.classes,
    f.Fees_type,
    f.Amount,
    f.Payment_status,
    h.Hostel_Name AS Hostel_Assigned,
    t.Bus_Number AS Transportation_Bus
FROM
    student_details sd
JOIN
    department d ON sd.Department_ID = d.Department_ID
JOIN
    student_course sc ON sd.Student_ID = sc.Student_ID
JOIN
    course c ON sc.Course_ID = c.Course_ID
JOIN
    subjects s ON s.Course_ID = c.Course_ID 
JOIN
    classroom cr ON d.Department_ID = cr.Department_ID
JOIN
    College_event ce ON d.Department_ID = ce.Department_ID
JOIN
    fees f ON sd.Student_ID = f.Student_ID
LEFT JOIN
    hostel h ON sd.Hostel_ID = h.Hostel_ID
LEFT JOIN
    transportation t ON sd.Bus_ID = t.Bus_ID
