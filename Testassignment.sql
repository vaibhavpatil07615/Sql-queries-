
--8 apr test assignment.
create database hospital;
use hospital;

create table doctor (Did int not null primary key, dname varchar(30),daddress varchar(50),qualification varchar(30), no_of_patient_handled int );
insert into doctor values(1,'kiran patil','jalgaon','MBBS',20),(2,'C.G.chaudhari','mumbai','MD',40);
insert into doctor values (5,'sanjay chavhan','mumbai','BAMS',10),(4,'neha bhangale','pune','BHMS',30),(3,'lalit patil','jalgaon','MD',50);
select*from doctor;
--------------------------------------------------------------
create table Patientmaster(pcode int not null primary key,pname varchar(30),paddress varchar(30),age int,gender varchar(7),bloodgrp varchar(4));
insert into Patientmaster values(6,'vaibhav patil','jalgaon',23,'male','o+'),(7,'swati chavhan','pune',24,'female','AB+'),(8,'sagar patil','pune',30,'male','o+'),
(9,'mayur patil','mumbai',35,'male','a+'),(10,'kajal patil','ahmadnagar',29,'female','b+');
select*from Patientmaster;
---------------------------------------------------------------------
create table Admittedpatient(pcode int not null primary key ,entry_date varchar(10),dicharge_date varchar(10),ward_no int,disease varchar(20),did int);
insert into Admittedpatient values (6,'3 march23','7 march23',3,'pneumonia',2),(8,'10 march23','14 march23',6,'covid',3),(9,'20 march23','24 march23',5,'fever',2),
(10,'1 apr23','7 apr23',1,'typhoid',1);
select*from Admittedpatient;
-----------------------------------------------

create table Bill(pcode int,bill_amount int);
insert into Bill values(6,20000),(8,10000),(9,12000),(10,22000);
select*from Bill;
---------------
alter table Admittedpatient add dischargedate varchar(10); -- add discharge date column in admitted patient table
select  max (Bill_amount) from Bill; -- maximum bill amount.
select qualification , count(*)from doctor group by qualification; -- group number of doctor as per qualification
select *  from doctor where qualification = 'MBBS' or qualification =  'MD'; -- doctor with qualification mbbs or MD.
select* from Patientmaster where age >= 21 and age<=27 and bloodgrp = 'AB+'; -- .patient with age between 21 to 27 and blood grp = ab+
select* from doctor where daddress = 'mumbai' and no_of_patient_handled = 10; -- doctor with addree = mumbai and no of patient handle = 10.
select bloodgrp,count(*) from Patientmaster group by bloodgrp; -- no of patient of respected blood grp.
select * from doctor where no_of_patient_handled >10; -- doctor with  no of patient handle is >10.
select paddress,count(*) from Patientmaster group by paddress having paddress = 'pune'; -- no of patient from pune

select *from Patientmaster where bloodgrp = 'AB+' and gender = 'female'; -- 

delete from Admittedpatient where ward_no = 6 and ward_no = 3 and disease = 'covid';


--- 10 april hw/ subquery.







