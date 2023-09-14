create database Aeries;

use Aeries;

create table Students(
ID int not null auto_increment primary key,
StudentName varchar(25) not null,
Universityyear int,
Groupe int
);

select * from Students;

create table Parents(
ID int not null auto_increment primary key,
ParentName varchar(25) not null
);

select * from Parents;

create table Materials(
ID int not null auto_increment primary key,
NumberOfWeeklyHours int
);

select * from Materials;

create table Timetable(
ID int not null auto_increment primary key,
Rundate date,
IDMaterial int
);

select * from Timetable;

#describes the structure of a table

desc Timetable;

#data entryStudents

insert into Students(ID,StudentName,Universityyear,Groupe) values
(1,'TibiD',3,2),
(2,'AndreeaD',3,2),
(3,'IoanaL',1,4),
(4,'TibiS',1,4);

select * from Students;

insert into Parents(ID,ParentName) values
(1,'AndreiF'),
(2,'BogdanS'),
(3,'MateiG'),
(4,'PopaL');

#we select the names of the students using left join

select Students.StudentName
from Students right join StudentName
on Students=StudentName;