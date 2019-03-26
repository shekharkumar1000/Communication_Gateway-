/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  HP
 * Created: Dec 18, 2018
 */

[SQL1#1]-Exercises

Task 1#

create table student (ID integer,Name varchar(20),Age integer);
insert into student(ID,Name,Age) values (1,'Tom',21);
insert into student(ID,Name,Age) values (2,'Lucy',24);
insert into student(ID,Name,Age) values (3,'frank',18);
insert into student(ID,Name,Age) values (4,'jane',20);
insert into student(ID,Name,Age) values (5,'Robert',21);

select * from student;

select id,name,age from student;

select name,age from student;

select name from student;

select * from student where name='Lucy';

select * from student where Age>20;

select * from student where id<4;

select Name from student where id=3;

delete from student where id=1;
select *from student;

delete from student where age<22;
select *from student;

drop table student;
select * from student;

Task 2#

create table products(ID integer,Name varchar(15),Price integer,Quantity integer);
insert into products(ID,Name,Price,Quantity) values (1,'Pepsi',10,100);
insert into products(ID,Name,Price,Quantity) values (3,'Colgate',6,50);
insert into products(ID,Name,Price,Quantity) values (5,'iPhone',499,8);
insert into products(ID,Name,Price,Quantity) values (6,'Snickers',4,150);
insert into products(ID,Name,Price,Quantity) values (9,'Levis',50,20);

select * from products;

select name from products;

select * from products where Quantity>40;

select * from products where Name='iphone';

select * from products where price<15;

insert into products(ID,Name,Price,Quantity) values (15,'Pantene',5,60);
insert into products(ID,Name,Price,Quantity) values (18,'LED Bulb',12,30);
insert into products(ID,Name,Price,Quantity) values (22,'Charger',20,10);
select * from products;

delete from products where quantity<10;
select * from products;

delete from products where name='levis';
select * from products;

delete from products where id>20;
select * from products;

delete from products where price>50;
select * from products;

drop table products;
select * from products;




