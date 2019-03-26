/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  HP
 * Created: Dec 18, 2018
 */
create table Students(
id integer,
name varchar(20)not null,
primary key(id)
);

/*
syntax
*/
create table products(
productcode integer,
name varchar(20));
/*
to add a primary key to an existing table
*/
alter table products add primary key(productcode);


/*
syntax
*/
create table products(
productcode integer not null,
name varchar(20));
/*
to add a primary key to an existing table
*/
alter table products add primary key(productcode);

/*
syntax
*/
create table Students(
id integer auto_increment,
name varchar(20)not null,
primary key(id)
);

insert into students(name) values('steve');
insert into students(name) values('john');
select * from students;

insert into students values(10,'Anita');
insert into students(name) values('Mary');
select * from students;


create table Employee (ID integer auto_increment,Name varchar(20) not null,
age integer not null,Salary integer not null,primary key(id));

insert into Employee(Name,age,Salary) values ('Alex',23,4500);
insert into Employee(Name,age,Salary) values ('James',24,2000);
insert into Employee(Name,age,Salary) values ('Robert',20,8000);
insert into Employee(Name,age,Salary) values ('Bill',21,5000);
insert into Employee(Name,age,Salary) values ('Army',26,8500);
insert into Employee(Name,age,Salary) values ('Kathy',25,9000);
insert into Employee(Name,age,Salary) values ('Julia',26,3500);

select * from Employee;
     
#primary key

CREATE TABLE employee7
(
id INTEGER,
name VARCHAR(20),
PRIMARY KEY (id)
 );

INSERT INTO employee7 (id)  VALUES (1);
SELECT * FROM employee7;

INSERT INTO employee7 (name) VALUES ('Julia');
INSERT INTO employee7 (id, name) VALUES (1, 'Mikey');

#foreign key

create table Employee (ID integer auto_increment,Name varchar(20) not null,
age integer not null,Salary integer not null,primary key(id));

insert into Employee(Name,age,Salary) values ('Alex',23,4500);
insert into Employee(Name,age,Salary) values ('James',24,2000);
insert into Employee(Name,age,Salary) values ('Robert',20,8000);
insert into Employee(Name,age,Salary) values ('Bill',21,5000);
insert into Employee(Name,age,Salary) values ('Army',26,8500);
insert into Employee(Name,age,Salary) values ('Kathy',25,9000);
insert into Employee(Name,age,Salary) values ('Julia',26,3500);

select * from Employee;

create table attendence (ID integer auto_increment,empid integer not null,
date integer not null,present integer not null,primary key(id),Foreign key(empid) references Employee(id));

insert into attendence(empid,date,present) values ('1',23,0);
insert into attendence(empid,date,present) values ('1',24,1);
insert into attendence(empid,date,present) values ('1',20,0);
insert into attendence(empid,date,present) values ('2',21,1);
insert into attendence(empid,date,present) values ('3',26,0);
insert into attendence(empid,date,present) values ('4',25,0);
insert into attendence(empid,date,present) values ('5',26,1);

select * from attendence;

#group by

create table cart (cartid integer,prodid integer,qty integer);
insert into cart(cartid,prodid,qty) values (1,1,4);
insert into cart(cartid,prodid,qty) values (1,4,10);
insert into cart(cartid,prodid,qty) values (1,3,7);
insert into cart(cartid,prodid,qty) values (2,2,20);
insert into cart(cartid,prodid,qty) values (2,5,10);
insert into cart(cartid,prodid,qty) values (3,2,6);
insert into cart(cartid,prodid,qty) values (1,1,3);
insert into cart(cartid,prodid,qty) values (2,2,5);

select cartid from cart group by cartid;

select cartid,prodid from cart group by cartid,prodid;

select cartid,sum(qty) from cart group by cartid;

select cartid,count(prodid) from cart group by cartid;

select cartid,prodid,count(prodid) from cart group by cartid,prodid;

#Exercise SQL2#1

task1#

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

select Name,count(Name) from Bills group by Name;

select Name,SUM(Amount) from Bills group by Name;

select Name,count(name),SUM(Amount) from Bills group by Name;

select Purpose,count(Purpose)from Bills group by Purpose;

select Purpose,sum(Amount)from Bills group by Purpose;

select Purpose,count(Purpose),sum(Amount)from Bills group by Purpose;

select Name,Purpose,count(Purpose),sum(Amount)from Bills group by name,Purpose;

select Name,max(Amount)from Bills group by name;

select Purpose,max(Amount)from Bills group by Purpose;

task 2#

create table Bills(ID integer,Name varchar(15),Category varchar(20),Quantity integer,price integer);
insert into Bills(ID,Name,Category,Quantity,price) values (1,'coke','SoftDrink',200,4);
insert into Bills(ID,Name,Category,Quantity,price) values (2,'Diet Coke','SoftDrink',160,5);
insert into Bills(ID,Name,Category,Quantity,price) values (3,'Coke Zero','SoftDrink',70,6);
insert into Bills(ID,Name,Category,Quantity,price) values (4,'Pepsi','SoftDrink',180,4);
insert into Bills(ID,Name,Category,Quantity,price) values (5,'RedBull','SoftDrink',160,8);
insert into Bills(ID,Name,Category,Quantity,price) values (6,'Lux','soap',60,3);
insert into Bills(ID,Name,Category,Quantity,price) values (7,'Dove','soap',40,5);
insert into Bills(ID,Name,Category,Quantity,price) values (8,'Pear','soap',25,6);
insert into Bills(ID,Name,Category,Quantity,price) values (9,'iPhone7','Mobile',6,400);
insert into Bills(ID,Name,Category,Quantity,price) values (10,'iPhone6','Mobile',8,300);
insert into Bills(ID,Name,Category,Quantity,price) values (11,'iPhone7S','Mobile',4,500);
insert into Bills(ID,Name,Category,Quantity,price) values (12,'iPhone8','Mobile',2,600);
insert into Bills(ID,Name,Category,Quantity,price) values (13,'Pixel','Mobile',2,550);
insert into Bills(ID,Name,Category,Quantity,price) values (14,'Galaxy S9','Mobile',1,600);

select * from Bills;

select Category,count(Name)from Bills group by Category;

select Category,sum(Quantity)from Bills group by Category;

select Category,sum(price)from Bills group by Category;

select Category,sum(price),sum(Quantity) from Bills group by Category;

select Category,max(price),max(Quantity) from Bills group by Category;

INNER JOINT vedio#

create table Accounts(ID integer,Name varchar(15);
insert into Accounts(ID,Name) values (1,'jack');
insert into Accounts(ID,Name) values (2,'Mary');
insert into Accounts(ID,Name) values (3,'Steve');
insert into Accounts(ID,Name) values (4,'Tim');
insert into Accounts(ID,Name) values (5,'Kathy');

select * from Accounts;


create table Transactions(TID integer,Accid integer,Amount integer);
insert into Transactions(TID,Accid,Amount) values (1,1,100);
insert into Transactions(TID,Accid,Amount) values (2,4,50);
insert into Transactions(TID,Accid,Amount) values (3,8,200);
insert into Transactions(TID,Accid,Amount) values (4,2,60);
insert into Transactions(TID,Accid,Amount) values (5,1,150);

select * from Transactions;

select Tid,accid,name,amount 
from Transactions Inner join Accounts
 on Transactions.accid=Accounts.id;

create table cart (cartid integer,prodid integer,qty integer);
insert into cart(cartid,prodid,qty) values (1,1,4);
insert into cart(cartid,prodid,qty) values (1,4,10);
insert into cart(cartid,prodid,qty) values (1,3,7);
insert into cart(cartid,prodid,qty) values (2,2,20);

select * from cart;

create table products(ID integer,Name varchar(15),Price integer);
insert into products(ID,Name,Price) values (1,'Coke',6);
insert into products(ID,Name,Price) values (2,'Pepsi',5);
insert into products(ID,Name,Price) values (3,'5Star',2);
insert into products(ID,Name,Price) values (4,'Maggi',8);
insert into products(ID,Name,Price) values (5,'Dove',12);

select * from products;

select cartid,prodid,name,qty 
from cart Inner join products
 on cart.prodid=products.id;

select cartid,count(prodid) as count,sum(qty) as TotalQty,sum(Price*Qty)as TotalValue 
from cart Inner join products
 on cart.prodid=products.id
group by cartid;

select cartid,prodid,name,qty,price,
price*Qty as value                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         
from cart Inner join products
 on cart.prodid=products.id;


Exersise SQL2#2

#Task 1

create table Bills(BillNo integer,Empid integer,Purpose varchar(20),Amount integer);
insert into Bills(BillNo,Empid,Purpose,Amount) values (104,1,'Food',48);
insert into Bills(BillNo,Empid,Purpose,Amount) values (211,2,'cab',14);
insert into Bills(BillNo,Empid,Purpose,Amount) values (304,3,'Flight',155);
insert into Bills(BillNo,Empid,Purpose,Amount) values (135,3,'Hostel',89);
insert into Bills(BillNo,Empid,Purpose,Amount) values (188,3,'Cab',42);
insert into Bills(BillNo,Empid,Purpose,Amount) values (273,1,'Mobile',29);
insert into Bills(BillNo,Empid,Purpose,Amount) values (302,4,'food',25);
insert into Bills(BillNo,Empid,Purpose,Amount) values (347,2,'Cab',27);
insert into Bills(BillNo,Empid,Purpose,Amount) values (115,1,'food',36);
insert into Bills(BillNo,Empid,Purpose,Amount) values (294,3,'flight',140);
insert into Bills(BillNo,Empid,Purpose,Amount) values (154,3,'Cab',24);

select * from bills;

create table Employees (ID integer,Name varchar(20));
insert into Employees(ID,Name) values (1,'jack');
insert into Employees(ID,Name) values (2,'Tim');
insert into Employees(ID,Name) values (3,'Annie');
insert into Employees(ID,Name) values (4,'Steve');
insert into Employees(ID,Name) values (5,'Mary');

select * from Employees;

select BillNo,Name,Purpose,Amount 
from Employees Inner join Bills
 on Employees.ID=Bills.Empid;

select Name,Purpose,sum(Amount) 
from Employees Inner join Bills
 on Employees.ID=Bills.Empid
group by Name;

select Name,sum(Amount) 
from Employees Inner join Bills
 on Employees.ID=Bills.Empid
group by Name;

task 2#

create table products(Prodid integer,Name varchar(15),Cartid integer,Quantity integer,Price integer);
insert into products(Prodid,Name,Cartid,Quantity,price) values (1,'coke',1,200,4);
insert into products(Prodid,Name,Cartid,Quantity,price) values (2,'Diet Coke',1,160,5);
insert into products(Prodid,Name,Cartid,Quantity,price) values (3,'Coke Zero',1,70,6);
insert into products(Prodid,Name,Cartid,Quantity,price) values (4,'Pepsi',1,180,4);
insert into products(Prodid,Name,Cartid,Quantity,price) values (5,'RedBull',1,160,8);
insert into products(Prodid,Name,Cartid,Quantity,price) values (6,'Lux',2,60,3);
insert into products(Prodid,Name,Cartid,Quantity,price) values (7,'Dove',2,40,5);
insert into products(Prodid,Name,Cartid,Quantity,price) values (8,'Pear',2,25,6);
insert into products(Prodid,Name,Cartid,Quantity,price) values (9,'iPhone7',3,6,400);
insert into products(Prodid,Name,Cartid,Quantity,price) values (10,'iPhone6',3,8,300);
insert into products(Prodid,Name,Cartid,Quantity,price) values (11,'iPhone7S',3,4,500);
insert into products(Prodid,Name,Cartid,Quantity,price) values (12,'iPhone8',3,2,600);
insert into products(Prodid,Name,Cartid,Quantity,price) values (13,'Pixel',3,2,550);
insert into products(Prodid,Name,Cartid,Quantity,price) values (14,'Galaxy S9',3,1,600);

select * from products;

create table Category(id integer,Category varchar(15));
insert into Category(id,Category) values (1,'SoftDrink');
insert into Category(id,Category) values (2,'Soap');
insert into Category(id,Category) values (3,'Mobile');

select * from Category;

select id,Name,Category,price,Quantity
from products Inner join Category
 on products.Cartid=Category.id;
group by Name;

select id,Name,Category,price,Quantity
from products Inner join Category
 on products.Cartid=Category.id
group by Name
having Quantity>20 ;

select id,Name,Category,price,Quantity
from products Inner join Category
 on products.Cartid=Category.id
group by Name
having price<100 ;


project

#1st one

create table CourseMaster (id integer auto_increment,Nam varchar(20) not null,
DURATION integer,fees integer  ,TECHNOLOGY varchar(20),primary key(id));
insert into CourseMaster(Nam,DURATION,TECHNOLOGY,fees) values ('Core Java',2,'java',1000);
insert into CourseMaster(Nam,DURATION,TECHNOLOGY,fees) values ('Advance Java',2,'java',2000);
insert into CourseMaster(Nam,DURATION,TECHNOLOGY,fees) values ('Python',2,'python',2500);
select * from CourseMaster;
create table studentMaster(ID integer auto_increment,Name varchar(20) not null,passord varchar(20),
email varchar(20),mobile varchar(20),city varchar(20),primary key(id));
insert into studentMaster(name,passord,email,mobile,city) values ('jack','jack123','jack@gmail.com','123456','london');
insert into studentMaster(name,passord,email,mobile,city) values ('bob','bob123','bob@gmail.com','123457','paris');
insert into studentMaster(name,passord,email,mobile,city) values ('satya','satya123','satya@gmail.com','123489','new york');
select * from studentMaster;
create table CoursesEnrolled (eid integer auto_increment,studentid integer not null,courseid integer not null,feeid integer ,
primary key(eid),Foreign key(courseid) references CourseMaster(id),Foreign key(studentid) references studentMaster(ID));
select * from CoursesEnrolled;
create table feepaid (id integer auto_increment,studentsid integer not null,
amount integer,primary key(id));
select * from feepaid;

CourseMaster(id,Nam,DURATION,TECHNOLOGY,fees)
studentMaster(id,name,passord,email,mobile,city),
CoursesEnrolled(eid,studentid,courseid,feeid)
feepaid(id,studentid,amount)

Update studentMaster Inner join CoursesEnrolled on CoursesEnrolled.studentid=studentMaster.id Inner join CourseMaster on CoursesEnrolled.courseid=CourseMaster.id Inner join feepaid on feepaid.id=CoursesEnrolled.eid set amount=amount+6 where feepaid.id=6;
select * from feepaid;

select name,nam,eid,fees,studentid,amount,courseid from studentMaster Inner join CoursesEnrolled on CoursesEnrolled.studentid=studentMaster.id Inner join CourseMaster on CoursesEnrolled.courseid=CourseMaster.id Inner join feepaid on feepaid.id=CoursesEnrolled.courseid;

select name,nam,eid,studentid,courseid,amount from studentMaster Inner join CoursesEnrolled on CoursesEnrolled.studentid=studentMaster.id Inner join CourseMaster on CoursesEnrolled.courseid=CourseMaster.id Inner join feepaid on feepaid.id=CoursesEnrolled.courseid;

select name,nam,eid,fees,studentid,amount,courseid from studentMaster Inner join CoursesEnrolled on CoursesEnrolled.studentid=studentMaster.id Inner join CourseMaster on CoursesEnrolled.courseid=CourseMaster.id Inner join feepaid on feepaid.id=CoursesEnrolled.eid; 



create table quessolmaster (id integer auto_increment,student varchar(20),
course varchar(20),question varchar(1000)  ,solution varchar(1000),primary key(id));
select * from quessolmaster;
#2nd one

create table users (id integer auto_increment,Name varchar(20) not null unique,
passord varchar(20),email varchar(20)  ,role varchar(20),primary key(id));
insert into users(Name,passord,email,role) values ('rahul','rahul123','rahul@gmail.com','inventory');
insert into users(Name,passord,email,role) values ('shubham','shubham123','shubham@gmail.com','shipping');
insert into users(Name,passord,email,role) values ('sumit','sumit123','sumit@gmail.com','product');
insert into users(Name,passord,email,role) values ('admin','admin123','admin@gmail.com','admin');
select * from users;

create table categorymaster (id integer auto_increment,catname varchar(20),
primary key(id));
insert into categorymaster(catname) values ('mobile');
insert into categorymaster(catname) values ('laptop');
insert into categorymaster(catname) values ('tvs');
select * from categorymaster;

create table productmaster (id integer auto_increment,catid integer,name varchar(20),brand varchar(20),
description varchar(255),image varchar(20),price integer,primary key(id),Foreign key(catid) references categorymaster(id));
insert into productmaster(catid,name,brand,description,image,price) values (1,'lava17','lava','easy to handle','la17img',1000);
insert into productmaster(catid,name,brand,description,image,price) values (1,'carbon17','carbon','easy to handle','ca17img',1500);
insert into productmaster(catid,name,brand,description,image,price) values (1,'lemon17','lemon','easy to handle','lem17img',2000);
insert into productmaster(catid,name,brand,description,image,price) values (2,'hp17','hp','easy to handle','hp17img',20000);
insert into productmaster(catid,name,brand,description,image,price) values (2,'lenevo17','lenevo','easy to handle','len17img',25000);
insert into productmaster(catid,name,brand,description,image,price) values (2,'del17','del','easy to handle','de17img',30000);
insert into productmaster(catid,name,brand,description,image,price) values (3,'lg17','lg','easy to handle','lg17img',12000);
insert into productmaster(catid,name,brand,description,image,price) values (3,'sumsung17','sumsung','easy to handle','sa17img',14000);
insert into productmaster(catid,name,brand,description,image,price) values (3,'sony17','sony','easy to handle','so17img',16000);
select * from productmaster;

create table bestselling (id integer auto_increment,prodid integer,
primary key(id),Foreign key(prodid) references productmaster(id));
insert into bestselling(prodid) values ('1');
insert into bestselling(prodid) values ('4');
insert into bestselling(prodid) values ('5');
insert into bestselling(prodid) values ('6');
insert into bestselling(prodid) values ('8');
select * from bestselling;

create table customermaster (id integer auto_increment,Name varchar(20) not null unique,
passord varchar(20) not null,email varchar(20) not null,mobile varchar(20) not null,address varchar(255) not null,primary key(id));
insert into customermaster(Name,passord,email,mobile,address) values ('shekhar','shekhar123','shekhar@gmail.com',7903933705,'patna');
insert into customermaster(Name,passord,email,mobile,address) values ('harshit','harshit123','harshit@gmail.com',8987262654,'up');
insert into customermaster(Name,passord,email,mobile,address) values ('aditya','aditya123','aditya@gmail.com',7803933704,'delhi');
insert into customermaster(Name,passord,email,mobile,address) values ('saurabh','saurabh123','saurabh@gmail.com',9473262650,'kolkata');
select * from customermaster;

create table cart (id integer auto_increment,custid integer,status varchar(20),
primary key(id),Foreign key(custid) references customermaster(id));
insert into cart(custid,status) values (1,'ordered');
insert into cart(custid,status) values (1,'added');
insert into cart(custid,status) values (2,'added');
insert into cart(custid,status) values (2,'ordered');
insert into cart(custid,status) values (3,'ordered');
insert into cart(custid,status) values (3,'added');
insert into cart(custid,status) values (4,'ordered');
insert into cart(custid,status) values (4,'added');
select * from cart;

create table cartdetails (id integer auto_increment,cartid integer,proid integer,qty integer,
primary key(id),Foreign key(cartid) references cart(id),Foreign key(proid) references productmaster(id));
insert into cartdetails(cartid,proid,qty) values (1,1,2);
insert into cartdetails(cartid,proid,qty) values (1,2,3);
insert into cartdetails(cartid,proid,qty) values (2,3,1);
insert into cartdetails(cartid,proid,qty) values (3,4,2);
select * from cartdetails;
