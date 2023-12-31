SET FOREIGN_KEY_CHECKS = 0;
INSERT INTO Instructor(ssn,iName,rankk,baseSalary,extraSalary,dName) VALUES
('55878456234','Serenay Avci','Assistant','25000','500','Law'),
('12345678900','Ahmet Yildiz','Professor','50000','2000','Electronics'),
('59845678921','John Dalton','Associate Professor','40000','1500','Computer Enginnering'),
('12456985478','John Wick','Instructor','1000000','4000','Veterinary Medicine'),
('45678945623','Gustavo Fring','Professor Doctor','250000','3000','Gastronomy'),
('45689456279','Walter White','Professor','750000','6000','Chemistry'),
('12478965321','Harvey Specter','Professor','1500000','10000','Law');

INSERT INTO Department(dName,budget,headSsn,buildingName) VALUES
('Law','3000000','12478965321','DK'),
('Veterinary Medicine','3000000','John Wick','DMF'),
('Computer Enginnering','2000000','59845678921','DMF'),
('Electronics','1000000','12345678900','LMF'),
('Gastronomy','3500000','45678945623','DK'),
('Chemistry','2500000','45689456279','LMF');

INSERT INTO BuildClass(buildingName,roomNumber,capacity) VALUES
('DMF','101','88'),
('DMF','202','70'),
('DMF','303','85'),
('LMF','111','100'),
('LMF','222','50'),
('LMF','333','60'),
('DK','501','35'),
('DK','513','30'),
('DK','555','40'),
('DMF','214','78');

INSERT INTO Course(ects,courseName,courseCode,numHours,preReqCourseCode) VALUES
('5','Calculus1','MATH1111','4',null),
('5','Calculus2','MATH1112','5','Math1111'),
('4','Chemistry','CHEM1111','4',null),
('4','Biology','BIO1111','5',null),
('6','Introduction to Java','COMP1111','5',null),
('3','Ethics and Society','CORE4444','2',null),
('6','Constitutional Law','LAW1111','5',null),
('5','Introduction to Gastronomy','GAST1111','4',null);

INSERT INTO Sectionn(semester,courseCode,yearr,sectionId,quota,issn) VALUES
('FALL','MATH1111','2021','1','80','59845678921'),
('FALL','MATH1111','2021','2','80','59845678921'),
('SPRING','MATH1112','2022','1','90','59845678921'),
('SPRING','MATH1112','2022','2','90','59845678921'),
('FALL','CHEM1111','2022','1','80','45689456279'),
('FALL','CHEM1111','2022','2','80','45689456279'),
('FALL','COMP1111','2023','1','100','59845678921'),
('FALL','COMP1111','2023','2','100','59845678921'),
('SPRING','CORE4444','2020','1','80','55878456234'),
('SPRING','CORE4444','2020','2','80','55878456234'),
('FALL','GAST1111','2022','1','75','45678945623'),
('SPRING','LAW1111','2022','1','90','12478965321'),
('SPRING','LAW1111','2022','2','90','12478965321');

INSERT INTO Curricula(currCode,gradOrUGrad,dName) VALUES
('LAW1','Undergraduate','Law'),
('LAW2','Graduate','Law'),
('ELEC1','Undergraduate','Electronics'),
('ELEC2','Graduate','Electronics'),
('COMP1','Undergraduate','Computer Enginnering'),
('COMP2','Graduate','Computer Enginnering'),
('VET1','Undergraduate','Veterinarian Medicine'),
('VET2','Graduate','Veterinarian Medicine'),
('GAST1','Undergraduate','Gastronomy'),
('GAST2','Graduate','Gastronomy'),
('CHEM1','Undergraduate','Chemistry'),
('CHEM2','Graduate','Chemistry');

INSERT INTO curriculaCourses(courseCode,dName,currCode) VALUES
('MATH1111','Law','LAW1'),
('CORE4444','Law','LAW1'),
('MATH1112','Law','LAW2'),
('LAW1111','Law','LAW2'),
('MATH1111','Electronics','ELEC1'),
('CORE4444','Electronics','ELEC1'),
('CHEM1111','Electronics','ELEC2'),
('MATH1112','Electronics','ELEC2'),
('MATH1111','Computer Enginnering','COMP1'),
('CORE4444','Computer Enginnering','COMP1'),
('MATH1112','Computer Enginnering','COMP2'),
('COMP1111','Computer Enginnering','COMP2'),
('MATH1111','Veterinarian Medicine','VET1'),
('CORE4444','Veterinarian Medicine','VET1'),
('CHEM1111','Veterinarian Medicine','VET2'),
('BIO1111','Veterinarian Medicine','VET2'),
('MATH1111','Gastronomy','GAST1'),
('CORE4444','Gastronomy','GAST1'),
('BIO1111','Gastronomy','GAST2'),
('GAST1111','Gastronomy','GAST1'),
('MATH1111','Chemistry','CHEM1'),
('CORE4444','Chemistry','CHEM1'),
('MATH1112','Chemistry','CHEM2'),
('CHEM1111','Chemistry','CHEM2');

INSERT INTO Student(sssn,gradOrUGrad,advisorssn,currCode,dName,studentId,sName) VALUES
('45678921354','Undergraduate','55878456234','LAW1','Law','22LAW1478','Gizem Akar'),
('65784218741','Graduate','12478965321','LAW2','Law','20LAW1068','Duru Korkmaz'),
('64567632454','Undergraduate','59845678921','ELEC1','Electronics','22ELEC1047','Ali Kalender'),
('12359865232','Graduate','59845678921','ELEC2','Electronics','20ELEC1658','Ali Yağız Dülger'),
('45665896584','Undergraduate','59845678921','COMP1','Computer Enginnering','22COMP1063','Yağmur Çekim'),
('98545265814','Graduate','59845678921','COMP2','Computer Enginnering','20COMP2145','Azra Melek'),
('63254897287','Undergraduate','12456985478','VET1','Veterinarian Medicine','22VET3245','Zeynep Çelik'),
('45678512345','Graduate','12456985478','VET2','Veterinarian Medicine','20VET5525','Emirhan Dilmen'),
('79893254621','Undergraduate','45678945623','GAST1','Gastronomy','22GAST1456','Eren Karayılan'),
('78521345251','Graduate','45678945623','GAST2','Gastronomy','20GAST5687','Bünyamin Güler'),
('12348756248','Undergraduate','45689456279','CHEM1','Chemistry','22CHEM1456','Murat Öktem'),
('35468423456','Graduate','45689456279','CHEM2','Chemistry','20CHEM1651','Onurhan Çullu');

INSERT INTO Project(leadSsn,prName,budget,startDate,endDate,subjectt,contrDName) VALUES
('12478965321','Better Labor System','250000','2022-07-07','2023-07-07','Labor Laws','Law'),
('12456985478','Protect Animals','350000','2021-06-06','2022-06-06','Animals','Veterinarian Medicine'),
('59845678921','ybbykIDE','450000','2020-05-05','2021-05-05','New Coding Enviroment','Computer Enginnering'),
('12345678900','hhhRobot','600000','2023-04-04','2023-04-04','artificial intelligence','Electronics'),
('45678945623','Mexico','100000','2023-01-01','2024-01-01','Mexica foods','Gastronomy'),
('45689456279','Walterodium','1000000','2019-08-08','2025-08-08','New Compound','Chemistry');

INSERT INTO Emails(sssn,email) VALUES
('45678921354','gizem.akar@gmail.com'),
('65784218741','duru.korkmaz@gmail.com'),
('64567632454','ali.kalender@gmail.com'),
('12359865232','ali.yagız.dulger@gmail.com'),
('45665896584','yagmur.cekim@gmail.com'),
('98545265814','azra.melek@gmail.com'),
('63254897287','zeynep.celik@gmail.com'),
('45678512345','emirhan.dilmen@gmail.com'),
('79893254621','eren.karayilan@gmail.com'),
('78521345251','bunyamin.guler@gmail.com'),
('12348756248','murat.oktem@gmail.com'),
('35468423456','onurhan.cullu@gmail.com');

INSERT INTO GradStudent(sssn,advisorSsn) VALUES
('65784218741','12478965321'),
('12359865232','59845678921'),
('98545265814','59845678921'),
('45678512345','12456985478'),
('78521345251','45678945623'),
('35468423456','45689456279');

INSERT INTO PrevDegrees(college,degree,yearr,gradsssn) VALUES
('Imaginarium Collage','Graduated','2016','65784218741'),
('Surreal Collage','Graduated','2019','12359865232'),
('Curiosity Collage','Graduated','2017','98545265814'),
('Harmony Collage','Graduated','2016','45678512345'),
('Alev Collage','Graduated','2015','78521345251'),
('Visionary Collage','Graduated','2018','35468423456');

INSERT INTO TimeSlot(dayy,hourr) VALUES
('M','12'),
('T','12'),
('W','12'),
('TH','12'),
('F','12'),
('M','23'),
('T','23'),
('W','23'),
('TH','23'),
('F','23'),
('M','34'),
('T','34'),
('W','34'),
('TH','34'),
('F','34'),
('M','45'),
('T','45'),
('W','45'),
('TH','45'),
('F','45'),
('M','56'),
('T','56'),
('W','56'),
('TH','56'),
('F','56'),
('M','67'),
('T','67'),
('W','67'),
('TH','67'),
('F','67'),
('M','78'),
('T','78'),
('W','78'),
('TH','78'),
('F','78'),
('M','89'),
('T','89'),
('W','89'),
('TH','89'),
('F','89');

INSERT INTO InstrInProjects(prjLeadSsn,prName,issn,workingHours) VALUES

('12478965321','Better Labor System','55878456234','123'),
('12478965321','Better Labor System','12345678900','124'),
('12456985478','Protect Animals','45678945623','160'),
('12456985478','Protect Animals','45689456279','160'),
('59845678921','ybbykIDE','12345678900','129'),
('59845678921','ybbykIDE','12478965321','150'),
('12345678900','hhhRobot','59845678921','198'),
('12345678900','hhhRobot','45678945623','207'),
('45678945623','Mexico','12456985478','143'),
('45678945623','Mexico','12345678900','150'),
('45689456279','Walterodium','12478965321','190'),
('45689456279','Walterodium','55878456234','198');

INSERT INTO GradsInProject(prjLeadSsn,prName,gradsssn,workingHours) VALUES

('12478965321','Better Labor System','65784218741','157'),
('12478965321','Better Labor System','45678512345','156'),
('12456985478','Protect Animals','45678512345','168'),
('12456985478','Protect Animals','65784218741','157'),
('59845678921','ybbykIDE','98545265814','198'),
('59845678921','ybbykIDE','12359865232','178'),
('12345678900','hhhRobot','12359865232','123'),
('12345678900','hhhRobot','98545265814','125'),
('45678945623','Mexico','78521345251','136'),
('45678945623','Mexico','35468423456','202'),
('45689456279','Walterodium','35468423456','137'),
('45689456279','Walterodium','78521345251','167');

INSERT INTO Enrollment(sssn,grade,semester,courseCode,yearr,sectionId,issn,buildingName,roomNumber,dayy,hourr) VALUES
('45678921354','BB','FALL','MATH1111','2021','1','59845678921','DMF','101','M','12'),
('45678921354','BA','SPRING','CORE4444','2020','1','55878456234','DK','501','F','12'),
('65784218741','AA','SPRING','MATH1112','2020','2','59845678921','DMF','101','TH','34'),
('65784218741','CB','SPRING','LAW1111','2022','1','59845678921','DMF','101','M','12'),
('64567632454','DD','FALL','MATH1111','2021','1','59845678921','DMF','101','M','12'),
('64567632454','AA','SPRING','CORE4444','2020','2','55878456234','DK','501','F','34'),
('12359865232','BA','FALL','CHEM1111','2022','1','45689456279','LMF','111','M','56'),
('12359865232','BB','SPRING','MATH1112','2020','2','59845678921','DMF','101','TH','34'),
('45665896584','CC','FALL','MATH1111','2021','2','59845678921','DMF','101','T','12'),
('45665896584','AA','SPRING','CORE4444','2020','2','55878456234','DK','501','F','34'),
('98545265814','AA','SPRING','MATH1112','2020','2','59845678921','DMF','101','TH','34'),
('98545265814','AA','FALL','COMP1111','2023','1','59845678921','DMF','303','T','12'),
('63254897287','BB','FALL','MATH1111','2021','2','59845678921','DMF','101','T','12'),
('63254897287','BA','SPRING','CORE4444','2020','1','55878456234','DK','501','F','12'),
('45678512345','CB','FALL','CHEM1111','2022','1','45689456279','LMF','111','M','56'),
('45678512345','BB','SPRING','BIO1111','2020','1','12456985478','LMF','222','W','78'),
('79893254621','BB','FALL','MATH1111','2021','1','59845678921','DMF','101','M','12'),
('79893254621','AA','SPRING','CORE4444','2020','2','55878456234','DK','501','F','34'),
('79893254621','AA','FALL','GAST1111','2022','1','45678945623','DK','555','F','56'),
('78521345251','BB','SPRING','BIO1111','2020','1','12456985478','LMF','222','W','78'),
('12348756248','BB','FALL','MATH1111','2021','2','59845678921','DMF','101','T','12'),
('12348756248','CD','SPRING','CORE4444','2020','1','55878456234','DK','501','F','12'),
('35468423456','AA','SPRING','MATH1112','2020','2','59845678921','DMF','101','TH','34'),
('35468423456','CB','FALL','CHEM1111','2022','1','45689456279','LMF','111','M','56');

INSERT INTO ExamsOfSection(semester,courseCode,yearr,sectionId,issn,examName,datee) VALUES
('FALL','MATH1111','2021','1','59845678921','MATH1111.1 FINAL','2021-12-23'),
('FALL','MATH1111','2021','2','59845678921','MATH1111.2 FINAL','2021-12-23'),
('SPRING','MATH1111','2022','1','59845678921','MATH1112.1 FINAL','2022-06-15'),
('SPRING','MATH1111','2022','2','59845678921','MATH1112.2 FINAL','2022-06-15'),
('FALL','CHEM1111','2021','1','45689456279','CHEM1111.1 FINAL','2021-12-20'),
('FALL','CHEM1111','2022','2','45689456279','CHEM1111.2 FINAL','2021-12-20'),
('FALL','COMP1111','2023','1','59845678921','COMP1111.1 FINAL','2023-12-18'),
('FALL','COMP1111','2023','2','59845678921','COMP1111.2 FINAL','2023-12-18'),
('SPRING','BIO1111','2020','1','12456985478','BIO1111.1 FINAL','2020-06-13'),
('SPRING','CORE4444','2020','1','55878456234','CORE4444.2 FINAL','2020-06-18'),
('SPRING','CORE4444','2020','2','55878456234','CORE4444.2 FINAL','2020-06-18'),
('FALL','GAST1111','2022','1','45678945623','GAST1111.1 FINAL','2022-12-24'),
('SPRING','LAW1111','2022','1','12478965321','LAW1111.1 FINAL','2022-06-14'),
('SPRING','LAW1111','2022','2','12478965321','LAW1111.2 FINAL','2022-06-14');

INSERT INTO QuestionsOfExam(semester,courseCode,yearr,sectionId,examName,issn,qNo,qPoint) VALUES
('FALL','MATH1111','2021','1','MATH1111.1 FINAL','59845678921','1','25'),
('FALL','MATH1111','2021','1','MATH1111.1 FINAL','59845678921','2','25'),
('FALL','MATH1111','2021','1','MATH1111.1 FINAL','59845678921','3','25'),
('FALL','MATH1111','2021','1','MATH1111.1 FINAL','59845678921','4','25'),
('FALL','MATH1111','2021','2','MATH1111.2 FINAL','59845678921','1','25'),
('FALL','MATH1111','2021','2','MATH1111.2 FINAL','59845678921','2','25'),
('FALL','MATH1111','2021','2','MATH1111.2 FINAL','59845678921','3','25'),
('FALL','MATH1111','2021','2','MATH1111.2 FINAL','59845678921','4','25'),
('SPRING','MATH1112','2022','1','MATH1112.1 FINAL','59845678921','1','25'),
('SPRING','MATH1112','2022','1','MATH1112.1 FINAL','59845678921','2','25'),
('SPRING','MATH1112','2022','1','MATH1112.1 FINAL','59845678921','3','25'),
('SPRING','MATH1112','2022','1','MATH1112.1 FINAL','59845678921','4','25'),
('SPRING','MATH1112','2022','2','MATH1112.2 FINAL','59845678921','1','25'),
('SPRING','MATH1112','2022','2','MATH1112.2 FINAL','59845678921','2','25'),
('SPRING','MATH1112','2022','2','MATH1112.2 FINAL','59845678921','3','25'),
('SPRING','MATH1112','2022','2','MATH1112.2 FINAL','59845678921','4','25'),
('FALL','CHEM1111','2021','1','CHEM1111.1 FINAL','45689456279','1','25'),
('FALL','CHEM1111','2021','1','CHEM1111.1 FINAL','45689456279','2','25'),
('FALL','CHEM1111','2021','1','CHEM1111.1 FINAL','45689456279','3','25'),
('FALL','CHEM1111','2021','1','CHEM1111.1 FINAL','45689456279','4','25'),
('FALL','CHEM1111','2021','2','CHEM1111.2 FINAL','45689456279','1','25'),
('FALL','CHEM1111','2021','2','CHEM1111.2 FINAL','45689456279','2','25'),
('FALL','CHEM1111','2021','2','CHEM1111.2 FINAL','45689456279','3','25'),
('FALL','CHEM1111','2021','2','CHEM1111.2 FINAL','45689456279','4','25'),
('FALL','COMP1111','2023','1','COMP1111.1 FINAL','59845678921','1','25'),
('FALL','COMP1111','2023','1','COMP1111.1 FINAL','59845678921','2','25'),
('FALL','COMP1111','2023','1','COMP1111.1 FINAL','59845678921','3','25'),
('FALL','COMP1111','2023','1','COMP1111.1 FINAL','59845678921','4','25'),
('FALL','COMP1111','2023','2','COMP1111.2 FINAL','59845678921','1','25'),
('FALL','COMP1111','2023','2','COMP1111.2 FINAL','59845678921','2','25'),
('FALL','COMP1111','2023','2','COMP1111.2 FINAL','59845678921','3','25'),
('FALL','COMP1111','2023','2','COMP1111.2 FINAL','59845678921','4','25'),
('SPRING','CORE4444','2020','1','CORE4444.1 FINAL','55878456234','1','25'),
('SPRING','CORE4444','2020','1','CORE4444.1 FINAL','55878456234','2','25'),
('SPRING','CORE4444','2020','1','CORE4444.1 FINAL','55878456234','3','25'),
('SPRING','CORE4444','2020','1','CORE4444.1 FINAL','55878456234','4','25'),
('SPRING','CORE4444','2020','2','CORE4444.2 FINAL','55878456234','1','25'),
('SPRING','CORE4444','2020','2','CORE4444.2 FINAL','55878456234','2','25'),
('SPRING','CORE4444','2020','2','CORE4444.2 FINAL','55878456234','3','25'),
('SPRING','CORE4444','2020','2','CORE4444.2 FINAL','55878456234','4','25'),
('SPRING','BIO1111','2020','1','BIO1111.1 FINAL','12456985478','1','25'),
('SPRING','BIO1111','2020','1','BIO1111.1 FINAL','12456985478','2','25'),
('SPRING','BIO1111','2020','1','BIO1111.1 FINAL','12456985478','3','25'),
('SPRING','BIO1111','2020','1','BIO1111.1 FINAL','12456985478','4','25'),
('FALL','GAST1111','2022','1','GAST1111.1 FINAL','45678945623','1','25'),
('FALL','GAST1111','2022','1','GAST1111.1 FINAL','45678945623','2','25'),
('FALL','GAST1111','2022','1','GAST1111.1 FINAL','45678945623','3','25'),
('FALL','GAST1111','2022','1','GAST1111.1 FINAL','45678945623','4','25'),
('SPRING','LAW1111','2022','1','LAW1111.1 FINAL','12478965321','1','25'),
('SPRING','LAW1111','2022','1','LAW1111.1 FINAL','12478965321','2','25'),
('SPRING','LAW1111','2022','1','LAW1111.1 FINAL','12478965321','3','25'),
('SPRING','LAW1111','2022','1','LAW1111.1 FINAL','12478965321','4','25'),
('SPRING','LAW1111','2022','2','LAW1111.2 FINAL','12478965321','1','25'),
('SPRING','LAW1111','2022','2','LAW1111.2 FINAL','12478965321','2','25'),
('SPRING','LAW1111','2022','2','LAW1111.2 FINAL','12478965321','3','25'),
('SPRING','LAW1111','2022','2','LAW1111.2 FINAL','12478965321','4','25');

INSERT INTO StudentGradesPerQuestion(semester,courseCode,yearr,sectionId,issn,examName,qNo,sssn,pointsEarned) VALUES
('FALL','MATH111','2021','1','59845678921','MATH1111.1 FINAL','1','45678921354','25'),
('FALL','MATH111','2021','1','59845678921','MATH1111.1 FINAL','2','45678921354','25'),
('FALL','MATH111','2021','1','59845678921','MATH1111.1 FINAL','3','45678921354','25'),
('FALL','MATH111','2021','1','59845678921','MATH1111.1 FINAL','4','45678921354','7'),
('SPRING','CORE4444','2020','1','55878456234','CORE4444.1 FINAL','1','45678921354','25'),
('SPRING','CORE4444','2020','1','55878456234','CORE4444.1 FINAL','2','45678921354','25'),
('SPRING','CORE4444','2020','1','55878456234','CORE4444.1 FINAL','3','45678921354','20'),
('SPRING','CORE4444','2020','1','55878456234','CORE4444.1 FINAL','4','45678921354','15'),
('SPRING','MATH1112','2022','2','59845678921','MATH1112.2 FINAL','1','65784218741','25'),
('SPRING','MATH1112','2022','2','59845678921','MATH1112.2 FINAL','2','65784218741','25'),
('SPRING','MATH1112','2022','2','59845678921','MATH1112.2 FINAL','3','65784218741','25'),
('SPRING','MATH1112','2022','2','59845678921','MATH1112.2 FINAL','4','65784218741','25'),
('SPRING','LAW1111','2022','2','59845678921','LAW1111.2 FINAL','1','65784218741','25'),
('SPRING','LAW1111','2022','2','59845678921','LAW1111.2 FINAL','2','65784218741','25'),
('SPRING','LAW1111','2022','2','59845678921','LAW1111.2 FINAL','3','65784218741','25'),
('SPRING','LAW1111','2022','2','59845678921','LAW1111.2 FINAL','4','65784218741','0'),
('FALL','MATH111','2021','1','59845678921','MATH1111.1 FINAL','1','64567632454','25'),
('FALL','MATH111','2021','1','59845678921','MATH1111.1 FINAL','2','64567632454','25'),
('FALL','MATH111','2021','1','59845678921','MATH1111.1 FINAL','3','64567632454','10'),
('FALL','MATH111','2021','1','59845678921','MATH1111.1 FINAL','4','64567632454','5'),
('SPRING','CORE4444','2020','2','55878456234','CORE4444.2 FINAL','1','64567632454','25'),
('SPRING','CORE4444','2020','2','55878456234','CORE4444.2 FINAL','2','64567632454','25'),
('SPRING','CORE4444','2020','2','55878456234','CORE4444.2 FINAL','3','64567632454','25'),
('SPRING','CORE4444','2020','2','55878456234','CORE4444.2 FINAL','4','64567632454','25'),
('FALL','CHEM1111','2022','1','45689456279','CHEM1111.1 FINAL','1','12359865232','25'),
('FALL','CHEM1111','2022','1','45689456279','CHEM1111.1 FINAL','2','12359865232','11'),
('FALL','CHEM1111','2022','1','45689456279','CHEM1111.1 FINAL','3','12359865232','25'),
('FALL','CHEM1111','2022','1','45689456279','CHEM1111.1 FINAL','4','12359865232','25'),
('SPRING','MATH1112','2022','2','59845678921','MATH1112.2 FINAL','1','12359865232','25'),
('SPRING','MATH1112','2022','2','59845678921','MATH1112.2 FINAL','2','12359865232','25'),
('SPRING','MATH1112','2022','2','59845678921','MATH1112.2 FINAL','3','12359865232','25'),
('SPRING','MATH1112','2022','2','59845678921','MATH1112.2 FINAL','4','12359865232','5'),
('FALL','MATH111','2021','2','59845678921','MATH1111.2 FINAL','1','45665896584','25'),
('FALL','MATH111','2021','2','59845678921','MATH1111.2 FINAL','2','45665896584','25'),
('FALL','MATH111','2021','2','59845678921','MATH1111.2 FINAL','3','45665896584','10'),
('FALL','MATH111','2021','2','59845678921','MATH1111.2 FINAL','4','45665896584','10'),
('SPRING','CORE4444','2020','2','55878456234','CORE4444.2 FINAL','1','45665896584','25'),
('SPRING','CORE4444','2020','2','55878456234','CORE4444.2 FINAL','2','45665896584','25'),
('SPRING','CORE4444','2020','2','55878456234','CORE4444.2 FINAL','3','45665896584','25'),
('SPRING','CORE4444','2020','2','55878456234','CORE4444.2 FINAL','4','45665896584','25'),
('SPRING','MATH1112','2022','2','59845678921','MATH1112.2 FINAL','1','98545265814','25'),
('SPRING','MATH1112','2022','2','59845678921','MATH1112.2 FINAL','2','98545265814','25'),
('SPRING','MATH1112','2022','2','59845678921','MATH1112.2 FINAL','3','98545265814','25'),
('SPRING','MATH1112','2022','2','59845678921','MATH1112.2 FINAL','4','98545265814','25'),
('FALL','COMP1111','2023','1','59845678921','COMP1111.1 FINAL','1','98545265814','25'),
('FALL','COMP1111','2023','1','59845678921','COMP1111.1 FINAL','2','98545265814','25'),
('FALL','COMP1111','2023','1','59845678921','COMP1111.1 FINAL','3','98545265814','25'),
('FALL','COMP1111','2023','1','59845678921','COMP1111.1 FINAL','4','98545265814','25'),
('FALL','MATH111','2021','2','59845678921','MATH1111.2 FINAL','1','63254897287','25'),
('FALL','MATH111','2021','2','59845678921','MATH1111.2 FINAL','2','63254897287','25'),
('FALL','MATH111','2021','2','59845678921','MATH1111.2 FINAL','3','63254897287','25'),
('FALL','MATH111','2021','2','59845678921','MATH1111.2 FINAL','4','63254897287','8'),
('SPRING','CORE4444','2020','1','55878456234','CORE4444.1 FINAL','1','63254897287','25'),
('SPRING','CORE4444','2020','1','55878456234','CORE4444.1 FINAL','2','63254897287','25'),
('SPRING','CORE4444','2020','1','55878456234','CORE4444.1 FINAL','3','63254897287','25'),
('SPRING','CORE4444','2020','1','55878456234','CORE4444.1 FINAL','4','63254897287','12'),
('FALL','CHEM1111','2022','1','45689456279','CHEM1111.1 FINAL','1','45678512345','25'),
('FALL','CHEM1111','2022','1','45689456279','CHEM1111.1 FINAL','2','45678512345','25'),
('FALL','CHEM1111','2022','1','45689456279','CHEM1111.1 FINAL','3','45678512345','25'),
('FALL','CHEM1111','2022','1','45689456279','CHEM1111.1 FINAL','4','45678512345','2'),
('SPRING','BIO1111','2020','1','12456985478','BIO1111.1 FINAL','1','45678512345','25'),
('SPRING','BIO1111','2020','1','12456985478','BIO1111.1 FINAL','2','45678512345','25'),
('SPRING','BIO1111','2020','1','12456985478','BIO1111.1 FINAL','3','45678512345','25'),
('SPRING','BIO1111','2020','1','12456985478','BIO1111.1 FINAL','4','45678512345','6'),
('FALL','MATH111','2021','1','59845678921','MATH1111.1 FINAL','1','79893254621','25'),
('FALL','MATH111','2021','1','59845678921','MATH1111.1 FINAL','2','79893254621','25'),
('FALL','MATH111','2021','1','59845678921','MATH1111.1 FINAL','3','79893254621','25'),
('FALL','MATH111','2021','1','59845678921','MATH1111.1 FINAL','4','79893254621','8'),
('SPRING','CORE4444','2020','2','55878456234','CORE4444.2 FINAL','1','79893254621','25'),
('SPRING','CORE4444','2020','2','55878456234','CORE4444.2 FINAL','2','79893254621','25'),
('SPRING','CORE4444','2020','2','55878456234','CORE4444.2 FINAL','3','79893254621','25'),
('SPRING','CORE4444','2020','2','55878456234','CORE4444.2 FINAL','4','79893254621','25'),
('FALL','GAST1111','2022','1','45678945623','GAST1111.1 FINAL','1','79893254621','25'),
('FALL','GAST1111','2022','1','45678945623','GAST1111.1 FINAL','2','79893254621','25'),
('FALL','GAST1111','2022','1','45678945623','GAST1111.1 FINAL','3','79893254621','25'),
('FALL','GAST1111','2022','1','45678945623','GAST1111.1 FINAL','4','79893254621','25'),
('SPRING','BIO1111','2020','1','12456985478','BIO1111.1 FINAL','1','78521345251','25'),
('SPRING','BIO1111','2020','1','12456985478','BIO1111.1 FINAL','2','78521345251','25'),
('SPRING','BIO1111','2020','1','12456985478','BIO1111.1 FINAL','3','78521345251','25'),
('SPRING','BIO1111','2020','1','12456985478','BIO1111.1 FINAL','4','78521345251','5'),
('FALL','MATH111','2021','2','59845678921','MATH1111.2 FINAL','1','12348756248','25'),
('FALL','MATH111','2021','2','59845678921','MATH1111.2 FINAL','2','12348756248','25'),
('FALL','MATH111','2021','2','59845678921','MATH1111.2 FINAL','3','12348756248','6'),
('FALL','MATH111','2021','2','59845678921','MATH1111.2 FINAL','4','12348756248','25'),
('SPRING','CORE4444','2020','1','55878456234','CORE4444.1 FINAL','1','12348756248','25'),
('SPRING','CORE4444','2020','1','55878456234','CORE4444.1 FINAL','2','12348756248','25'),
('SPRING','CORE4444','2020','1','55878456234','CORE4444.1 FINAL','3','12348756248','10'),
('SPRING','CORE4444','2020','1','55878456234','CORE4444.1 FINAL','4','12348756248','7'),
('SPRING','MATH1112','2022','2','59845678921','MATH1112.2 FINAL','1','35468423456','25'),
('SPRING','MATH1112','2022','2','59845678921','MATH1112.2 FINAL','2','35468423456','25'),
('SPRING','MATH1112','2022','2','59845678921','MATH1112.2 FINAL','3','35468423456','25'),
('SPRING','MATH1112','2022','2','59845678921','MATH1112.2 FINAL','4','35468423456','25'),
('FALL','CHEM1111','2022','1','45689456279','CHEM1111.1 FINAL','1','35468423456','25'),
('FALL','CHEM1111','2022','1','45689456279','CHEM1111.1 FINAL','2','35468423456','25'),
('FALL','CHEM1111','2022','1','45689456279','CHEM1111.1 FINAL','3','35468423456','25'),
('FALL','CHEM1111','2022','1','45689456279','CHEM1111.1 FINAL','4','35468423456','3');
