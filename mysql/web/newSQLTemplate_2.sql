/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  HP
 * Created: Dec 18, 2018
 */
create table months (ID integer,Name varchar(20),Days integer);
insert into months(ID,Name,Days) values (1,'January',31);
insert into months(ID,Name,Days) values (2,'February',28);
insert into months(ID,Name,Days) values (3,'March',31);
insert into months(ID,Name,Days) values (4,'April',30);
insert into months(ID,Name,Days) values (5,'May',31);
insert into months(ID,Name,Days) values (6,'June',30);
insert into months(ID,Name,Days) values (7,'July',31);
insert into months(ID,Name,Days) values (8,'August',31);
insert into months(ID,Name,Days) values (9,'September',30);
insert into months(ID,Name,Days) values (10,'Octuber',31);
insert into months(ID,Name,Days) values (11,'November',30);
insert into months(ID,Name,Days) values (12,'December',31);

select * from months where name like 'j%';

select * from months where name like 'ju%';

select * from months where name like '_____';

select * from months where name like '_a%';

select * from months where name like '%er';

create table Employee (ID integer,Name varchar(20),Salary integer);
insert into Employee(ID,Name,Salary) values (1,'Alex',4500);
insert into Employee(ID,Name,Salary) values (2,'James',2000);
insert into Employee(ID,Name,Salary) values (3,'Robert',8000);
insert into Employee(ID,Name,Salary) values (4,'Bill',5000);
insert into Employee(ID,Name,Salary) values (5,'Army',8500);
insert into Employee(ID,Name,Salary) values (6,'Kathy',9000);
insert into Employee(ID,Name,Salary) values (7,'Julia',3500);

select * from Employee where salary like '_5%';

select * from Employee where salary>4100 and salary<8900;

select * from Employee where salary<4000 or salary>8200;

Update employee
set salary=4000
where id<5;
select * from Employee;

Update employee
set salary= salary+500;
select * from Employee;

Update employee
set salary= salary+1000
where id>2 and salary<6000;
select * from Employee;

Update employee
set name= 'William'
where id=4;
select * from Employee;


[SQL1#2]-Exercise
task 1#

create table months (ID integer,Name varchar(20),Days integer);
insert into months(ID,Name,Days) values (1,'January',31);
insert into months(ID,Name,Days) values (2,'February',28);
insert into months(ID,Name,Days) values (3,'March',31);
insert into months(ID,Name,Days) values (4,'April',30);
insert into months(ID,Name,Days) values (5,'May',31);
insert into months(ID,Name,Days) values (6,'June',30);
insert into months(ID,Name,Days) values (7,'July',31);
insert into months(ID,Name,Days) values (8,'August',31);
insert into months(ID,Name,Days) values (9,'September',30);
insert into months(ID,Name,Days) values (10,'Octuber',31);
insert into months(ID,Name,Days) values (11,'November',30);
insert into months(ID,Name,Days) values (12,'December',31);

select * from months where name like 'j%';

select * from months where name like 'n%';

select * from months where name like 'ju%';

select * from months where name like 'oc%';

select * from months where name like '_______';

select * from months where name like '____';

select * from months where name like '_e%';

select * from months where name like '%r';

select * from months where name like '%ber';

good questions......
select * from months where name like '%e%';

select * from months where name like '%e%' and days=31;

select * from months where name like '%u%' and days=30;

select * from months where name like '%u%' and name like '_____%';

Task 2#

create table Bills(ID integer,Name varchar(15),Purpose varchar(20),Amount integer);
insert into Bills(ID,Name,Purpose,Amount) values (1,'Jack','Food',48);
insert into Bills(ID,Name,Purpose,Amount) values (2,'tim','cab',14);
insert into Bills(ID,Name,Purpose,Amount) values (3,'Annie','Flight',155);
insert into Bills(ID,Name,Purpose,Amount) values (4,'Annie','Hostel',89);
insert into Bills(ID,Name,Purpose,Amount) values (5,'Annie','Cab',42);
insert into Bills(ID,Name,Purpose,Amount) values (6,'Jack','Mobile',29);
insert into Bills(ID,Name,Purpose,Amount) values (7,'Steve','food',25);
insert into Bills(ID,Name,Purpose,Amount) values (8,'tim','Cab',27);

select * from bills where name='annie';

select * from bills where Purpose='food';

select * from bills where amount>30;

select * from bills where name='annie'and purpose='flight';

select * from bills where name='jack'and purpose='food';

select * from bills where purpose='Cab' and amount<30;

select * from bills where amount>20 and amount<30;

select * from bills where purpose='Cab' and amount>20 and amount<30;

Update bills
set amount= amount-2
where Purpose='cab';
select * from bills;

Update bills
set amount= amount+5
where Purpose='Food';
select * from bills;

Update bills
set name= 'timothy'
where name='tim';
select * from bills;

delete from bills where name='Jack';
select * from bills;

delete from bills where purpose='Hostel'and name='annie';
select * from bills;

delete from bills where purpose='cab'and amount>20 and amount<30;
select * from bills;

next vedio Aggregate Functions

create table Employee (ID integer,Name varchar(20),Salary integer);
insert into Employee(ID,Name,Salary) values (1,'Alex',4500);
insert into Employee(ID,Name,Salary) values (2,'James',2000);
insert into Employee(ID,Name,Salary) values (3,'Robert',8000);
insert into Employee(ID,Name,Salary) values (4,'Bill',5000);
insert into Employee(ID,Name,Salary) values (5,'Army',8500);
insert into Employee(ID,Name,Salary) values (6,'Kathy',9000);
insert into Employee(ID,Name,Salary) values (7,'Julia',3500);

select max(salary) from employee;

select max(salary) as Max1 from employee;

select min(salary) from employee;

select min(salary) as Min1 from employee;

select count(salary) as Count1 from employee where salary>5500;

select Sum(salary) as TotalSalary from employee where id>5;

create table months (ID integer,Name varchar(20),Days integer);
insert into months(ID,Name,Days) values (1,'January',31);
insert into months(ID,Name,Days) values (2,'February',28);
insert into months(ID,Name,Days) values (3,'March',31);
insert into months(ID,Name,Days) values (4,'April',30);
insert into months(ID,Name,Days) values (5,'May',31);
insert into months(ID,Name,Days) values (6,'June',30);
insert into months(ID,Name,Days) values (7,'July',31);
insert into months(ID,Name,Days) values (8,'August',31);
insert into months(ID,Name,Days) values (9,'September',30);
insert into months(ID,Name,Days) values (10,'Octuber',31);
insert into months(ID,Name,Days) values (11,'November',30);
insert into months(ID,Name,Days) values (12,'December',31);

select count(id) as CountDays from months where Days=30;

select * from Employee 
where salary=
(
select Max(Salary) from Employee
);

select * from Employee 
where salary>
(select Max(Salary) from Employee)-2000;

select * from Employee 
where salary<
(select Max(Salary) from Employee)-2000
and salary>
(select Min(Salary) from Employee)+1000;

exercise
task 1#

create table Bills(ID integer,Name varchar(15),Purpose varchar(20),Amount integer);
insert into Bills(ID,Name,Purpose,Amount) values (1,'Jack','Food',48);
insert into Bills(ID,Name,Purpose,Amount) values (2,'tim','cab',14);
insert into Bills(ID,Name,Purpose,Amount) values (3,'Annie','Flight',155);
insert into Bills(ID,Name,Purpose,Amount) values (4,'Annie','Hostel',89);
insert into Bills(ID,Name,Purpose,Amount) values (5,'Annie','Cab',42);
insert into Bills(ID,Name,Purpose,Amount) values (6,'Jack','Mobile',29);
insert into Bills(ID,Name,Purpose,Amount) values (7,'Steve','food',25);
insert into Bills(ID,Name,Purpose,Amount) values (8,'tim','Cab',27);
insert into Bills(ID,Name,Purpose,Amount) values (9,'Jack','food',36);
insert into Bills(ID,Name,Purpose,Amount) values (10,'Annie','flight',140);
insert into Bills(ID,Name,Purpose,Amount) values (11,'Annie','Cab',24);

select max(Amount) from Bills;

select min(Amount) from Bills;

select max(Amount)as MaxBill from Bills;

select min(Amount)as MinBill from Bills;

select count(Amount) from Bills where amount>30;

select count(purpose) from Bills where purpose='cab' and amount>20;

select count(name) from Bills where name='annie';

select count(purpose) from Bills where name='jack' and purpose='food';

select sum(amount) from Bills ;

select sum(amount) from Bills where purpose='food';

select sum(amount) from Bills where purpose='cab';

select sum(amount) from Bills where name='jack';

select *from Bills 
where amount>
(select Max(purpose) from Employee where purpose='cab');

select *from Bills 
where amount<
(select Max(amount) from Bills where purpose='food')
;

select *from Bills 
where amount<
(select 2*(Min(amount)) from Bills )
;

select *from Bills 
where amount=
(select Max(amount) from Bills )
;

select *from Bills 
where amount=
(select Min(amount) from Bills )
;

select avg(amount) from Bills;

select avg(amount) from Bills where purpose='food';

select *from Bills 
where amount>
(select avg(amount) from Bills )
;

select *from Bills 
where amount>
(select 2*(avg(amount)) from Bills )
;

task2#

create table exams(ID integer,Name varchar(15),subject varchar(20),marks integer);
insert into exams(ID,Name,subject,marks) values (1,'Jack','Maths',75);
insert into exams(ID,Name,subject,marks) values (2,'bob','maths',62);
insert into exams(ID,Name,subject,marks) values (3,'Amy','maths',88);
insert into exams(ID,Name,subject,marks) values (4,'Meg','maths',70);
insert into exams(ID,Name,subject,marks) values (5,'Jack','Eng',84);
insert into exams(ID,Name,subject,marks) values (6,'bob','Eng',68);
insert into exams(ID,Name,subject,marks) values (7,'Amy','Eng',80);
insert into exams(ID,Name,subject,marks) values (8,'Meg','Eng',90);
insert into exams(ID,Name,subject,marks) values (9,'Jack','Geog',72);
insert into exams(ID,Name,subject,marks) values (10,'Bob','Geog',70);
insert into exams(ID,Name,subject,marks) values (11,'Amy','Geog',74);
insert into exams(ID,Name,subject,marks) values (12,'Meg','Geog',64);
insert into exams(ID,Name,subject,marks) values (13,'jack','sci',92);
insert into exams(ID,Name,subject,marks) values (14,'bob','sci',56);
insert into exams(ID,Name,subject,marks) values (15,'Amy','sci',88);
insert into exams(ID,Name,subject,marks) values (16,'Meg','sci',78);

select max(marks) from exams;

select min(marks) from exams;

select max(marks) from exams where Name='Jack';

select min(marks) from exams where Name='Amy';

select count(marks) from exams where marks>60 and marks<70;

select count(marks) from exams where subject='Eng' and marks>60 and marks<70;

select sum(marks) from exams where Name='Jack';

select sum(marks) from exams where Name='Meg';

select sum(marks) from exams where subject='Maths';

select avg(marks) from exams where subject='Geog';

select avg(marks) from exams where Name='bob';

select *from exams 
where marks> (select Max(marks) from exams where Name='bob'and subject='Maths' ) and subject='Maths';

select *from exams 
where marks< (select Max(marks) from exams where Name='Meg'and subject='sci' ) and subject='sci';

select *from exams 
where marks=(select Max(marks) from exams where Name='jack');

select *from exams 
where marks=(select min(marks) from exams where Name='Amy');

select *from exams 
where marks>(select avg(marks) from exams where Name='Meg') and name='Meg';

select *from exams 
where marks<(select avg(marks) from exams where Name='bob') and name='bob';

next excercise

CREATE TABLE Students (Id INTEGER,Name VARCHAR(20),Course VARCHAR(40));
INSERT INTO Students(Id, Name, Course) VALUES (102,'Kathy Smith','Perfect Android');
INSERT INTO Students(Id, Name, Course) VALUES (103,'Phil Gates','Perfect Python');
INSERT INTO Students(Id, Name, Course) VALUES (104,'James Watson','Perfect Java');

select * from students;

CREATE TABLE Flights (Id INTEGER,Flight_No INTEGER,Origin VARCHAR(20),Destination VARCHAR(20));
INSERT INTO Flights(Id, Flight_No, Origin, Destination) VALUES (1001,4641,'London','New York');
INSERT INTO Flights(Id, Flight_No, Origin, Destination) VALUES (1006,2981,'Paris','Tokyo');
INSERT INTO Flights(Id, Flight_No, Origin, Destination) VALUES (1018,3661,'Los Angeles','New Delhi');
INSERT INTO Flights(Id, Flight_No, Origin, Destination) VALUES (1035,5811,'Singapore','Sydney');

select * from Flights;


select * from students;