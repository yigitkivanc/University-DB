CREATE TABLE Instructor (
ssn varchar(11) NOT NULL PRIMARY KEY,
iName varchar(50) NOT NULL,
rankk varchar(40) NOT NULL,
baseSalary decimal(10,2) NOT NULL,
extraSalary decimal(10,2),
dName varchar(30)
);

CREATE TABLE Department (
dName varchar(30) NOT NULL PRIMARY KEY,
budget decimal(10,2) NOT NULL,
headSsn varchar(11) NOT NULL,
buildingName varchar(30) NOT NULL,
FOREIGN KEY (headSsn) REFERENCES Instructor(ssn)
);

ALTER TABLE Instructor
ADD FOREIGN KEY (dName) REFERENCES Department(dName);

CREATE TABLE BuildClass(
buildingName varchar(30) NOT NULL,
roomNumber numeric(10) NOT NULL,
capacity numeric(10) NOT NULL,
PRIMARY KEY (buildingName,roomNumber)
);

ALTER TABLE Department 
ADD FOREIGN KEY (buildingName) REFERENCES BuildClass(buildingName);

CREATE TABLE Course(
ects numeric(2) NOT NULL,
courseName varchar(40) NOT NULL,
courseCode varchar(10) NOT NULL PRIMARY KEY,
numHours numeric(2) NOT NULL,
preReqCourseCode varchar(10)
);

ALTER TABLE Course
ADD FOREIGN KEY (preReqCourseCode) REFERENCES Course(courseCode);

CREATE TABLE Sectionn(
semester varchar(15) NOT NULL,
courseCode varchar(10) NOT NULL,
yearr numeric(4) NOT NULL,
sectionid varchar(10) NOT NULL,
quota numeric(4) NOT NULL,
issn varchar(11) NOT NULL,
PRIMARY KEY (semester,coursecode,yearr,sectionid,issn),
FOREIGN KEY (courseCode) REFERENCES Course(courseCode),
FOREIGN KEY (issn) REFERENCES Instructor(ssn)
);

CREATE TABLE Curricula(
currCode varchar(10) NOT NULL,
gradOrUGrad varchar(15) NOT NULL,
dName varchar(30) NOT NULL,
PRIMARY KEY(currCode,dName),
FOREIGN KEY (dName) REFERENCES Department(dName)
);

CREATE TABLE curriculaCourses(
courseCode varchar(10) NOT NULL,
dName varchar(30) NOT NULL,
currCode varchar(10) NOT NULL,
PRIMARY KEY(courseCode,dName,currCode),
FOREIGN KEY (courseCode) REFERENCES Course(courseCode),
FOREIGN KEY (dName) REFERENCES Curricula(dName),
FOREIGN KEY (currCode) REFERENCES Curricula(currCode)
);

CREATE TABLE Student (
sssn varchar(11) NOT NULL PRIMARY KEY,
gradOrUGrad varchar(15) NOT NULL,
advisorSsn varchar(11) NOT NULL,
currCode varchar(10) NOT NULL,
dName varchar(30) NOT NULL,
studentId varchar(15) NOT NULL,
sName varchar(50) NOT NULL,
FOREIGN KEY (advisorSsn) REFERENCES Instructor(ssn),
FOREIGN KEY (currCode) REFERENCES Curricula(currCode),
FOREIGN KEY (dName) REFERENCES Curricula(dName)
);

CREATE TABLE Emails(
sssn varchar(11) NOT NULL,
email varchar(50) NOT NULL,
PRIMARY KEY (sssn,email),
FOREIGN KEY (sssn) REFERENCES Student (sssn)
);

CREATE TABLE GradStudent(
sssn varchar (11) NOT NULL PRIMARY KEY,
advisorSsn varchar(11) NOT NULL,
FOREIGN KEY (sssn) REFERENCES Student(sssn),
FOREIGN KEY (advisorSsn) REFERENCES Instructor(ssn)
);

CREATE TABLE  PrevDegrees (
college varchar(50) NOT NULL,
degree varchar(40) NOT NULL,
yearr numeric(4) NOT NULL,
gradsssn varchar(11) NOT NULL,
PRIMARY KEY (college,degree,yearr,gradsssn),
FOREIGN KEY (gradsssn) REFERENCES GradStudent(sssn)
);

CREATE TABLE Project(
leadSsn varchar(11) NOT NULL,
prName varchar(40) NOT NULL,
budget numeric(10,2) NOT NULL,
startDate date NOT NULL,
endDate date,
subjectt varchar(100) NOT NULL,
contrDName varchar(30) NOT NULL,
PRIMARY KEY (leadSsn,prName),
FOREIGN KEY (leadSsn) REFERENCES Instructor(ssn),
FOREIGN KEY (contrDName) REFERENCES Department(dName)
);

CREATE TABLE InstrInProjects(
prjLeadSsn varchar(11) NOT NULL,
prName varchar(40) NOT NULL,
issn varchar(11) NOT NULL,
workingHours numeric(4),
PRIMARY KEY (prjLeadSsn,prName,issn),
FOREIGN KEY (prjLeadSsn,prName) REFERENCES Project(leadSsn,prName),
FOREIGN KEY (issn) REFERENCES Instructor(ssn)
);

CREATE TABLE GradsInProject(
prjLeadSsn varchar(11) NOT NULL,
prName varchar(40) NOT NULL,
gradsssn varchar(11) NOT NULL,
workingHours numeric(4),
PRIMARY KEY (prjLeadSsn,prName,gradsssn),
FOREIGN KEY (prjLeadSsn,prName) REFERENCES Project(leadSsn,prName),
FOREIGN KEY (gradsssn) REFERENCES GradStudent(sssn)
);

CREATE TABLE TimeSlot(
dayy varchar(2) NOT NULL,
hourr numeric(2) NOT NULL,
PRIMARY KEY (dayy,hourr)
);

CREATE TABLE Enrollment(
sssn varchar(11) NOT NULL,
grade varchar(2),
semester varchar(15) NOT NULL,
courseCode varchar(10) NOT NULL,
yearr numeric(4) NOT NULL,
sectionId varchar(10) NOT NULL,
issn varchar(11) NOT NULL,
buildingName varchar(30) NOT NULL,
roomNumber numeric(10) NOT NULL,
hourr numeric(2) NOT NULL,
dayy varchar(2) NOT NULL,
PRIMARY KEY (sssn,semester,courseCode,yearr,sectionId,issn),
FOREIGN KEY (sssn) REFERENCES Student(sssn),
FOREIGN KEY (semester,courseCode,yearr,sectionId) REFERENCES Sectionn(semester,courseCode,yearr,sectionId),
FOREIGN KEY (issn) REFERENCES Instructor(ssn),
FOREIGN KEY (buildingName,roomNumber) REFERENCES BuildClass(buildingName,roomNumber),
FOREIGN KEY (dayy,hourr) REFERENCES TimeSlot(dayy,hourr)
);

CREATE TABLE ExamsOfSection(
semester varchar(15) NOT NULL,
courseCode varchar(10) NOT NULL,
yearr numeric(4) NOT NULL,
sectionId varchar(10) NOT NULL,
issn varchar(11) NOT NULL,
examName varchar(30) NOT NULL,
datee date,
PRIMARY KEY (semester,courseCode,yearr,sectionId,issn,examName),
FOREIGN KEY (semester,courseCode,yearr,sectionId,issn) REFERENCES Sectionn(semester,courseCode,yearr,sectionId,issn)
);
CREATE TABLE QuestionsOfExam(
semester varchar(15) NOT NULL,
courseCode varchar(10) NOT NULL,
yearr numeric(4) NOT NULL,
sectionId varchar(10) NOT NULL,
examName varchar(30) NOT NULL,
issn varchar(11) NOT NULL,
qNo numeric,
qPoint numeric(3) NOT NULL,
PRIMARY KEY (semester,courseCode,yearr,sectionId,examName,issn,qNo),
FOREIGN KEY (semester,courseCode,yearr,sectionId,issn,examName) REFERENCES ExamsOfSection(semester,courseCode,yearr,sectionId,issn,examName)
);

CREATE TABLE StudentGradesPerQuestion(
semester varchar(15) NOT NULL,
courseCode varchar(10) NOT NULL,
yearr numeric(4) NOT NULL,
sectionId varchar(10) NOT NULL,
issn varchar(11) NOT NULL,
examName varchar(30) NOT NULL,
qNo numeric,
sssn varchar(11) NOT NULL,
pointsEarned numeric(3) NOT NULL,
PRIMARY KEY (semester,courseCode,yearr,sectionId,issn,qNo,sssn),
FOREIGN KEY (semester,courseCode,yearr,sectionId,issn,examName,qNo) REFERENCES questionsofexam (semester,courseCode,yearr,sectionId,issn,examName,qNo)
);

