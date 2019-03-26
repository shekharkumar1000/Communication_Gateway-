/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  HP
 * Created: Dec 18, 2018
 */
create table student (ID integer,Name varchar(20),Age integer);
insert into student(ID,Name,Age) values (1,'jack',24);
insert into student(ID,Name,Age) values (2,'Lucy',25);
insert into student(ID,Name,Age) values (3,'Tim',31);
select* from student;
select name,age from student;
select name,age from student where age>30;
select name,age from student where age<28;
select name,age from student where name='lucy';

delete from student where id=2;
select *from student;

delete from student;
select *from student;

drop table student;
select * from student;

