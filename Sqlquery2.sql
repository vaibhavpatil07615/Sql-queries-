
use Dotnet14;
create table employee(empid int, empname varchar(30),salary int,city varchar(30),gender varchar(10),dept varchar(30));

SELECT * from employee;
insert into employee values(1,'vaibhav',40000,'jalgaon','male', 'HR');
insert into employee (empid,empname,salary,city,gender,dept)values(2,'sagar',55000, 'pune','male','ADMIN');
insert into employee values ( 3,'vrushali',60000,'jalgaon','female','ADMIN'),(4,'kajal',65000,'mumbai','female','SALES'),(5,'vishakha',75000,'mumbai','female','SALES');
insert into employee values(6,'dinesh',65000,'pune','male','HR'),(7,'pavan',70000,'mumbai','male','HR');
--- 5 apr hw
-- all employee from pune location
select * from employee where city = 'pune';
select * from employee where city = 'mumbai' and salary > 60000; --employee from mumbai and and salary>60K
select* from employee where dept = 'hr'; -- EMPLOYEE from hr dept.
select* from employee where gender = 'female' and dept = 'sales';  -- all female employee from sales dept.
select* from employee where salary<60000; --  employee with salary less than 60K
delete from employee where dept = 'admin';  -- EMPLOYEE FROM dept = admin.
select*from employee;

--------------------------------------------------------------------
-- 6 apr hw
select *from employee where empname like '%a'; -- employee name with character end with 'a'.
select*from employee where city like '____'; -- employee with city length 4 
select  dept, count(*) from employee  group by dept; -- number of employee from each dept.
select* from employee;
select city ,count(*) from  employee  group by city; -- number of employee from each city.
select city,count (*) from employee group by city having count(*)>2; -- city name with more than 2 employee.
select dept , count (*) from employee  group by dept having count(*) = 2; --city name with 2 employee
select* from employee where empname like '%i%'; --- employee name which contain character 'i'.
--------------------------------------------------------------
--7 apr 2023
use dotnet14;
create table Studentmarks(sid int primary key,sname varchar(30),smarks1 int ,smarks2 int);
select*from Studentmarks;



create table Doctordetail (did int not null ,dname varchar(30),education varchar(20)); -- primary key in 

alter table Doctordetail add constraint d_pk primary key(did);








 