

create proc InsertEmp_SP
@EmpID int,@EmpName nvarchar(50),@City nvarchar(50),@Age float, @sex nvarchar(20),@Joiningdate datetime,@Contact nvarchar(50) 
as begin insert into EmpTest_tab(Emp_ID,Emp_name,city,Age,Sex,Joining_date,Contact) values(@EmpID,@EmpName,@City,@Age,@sex,@Joiningdate,@Contact)
end

exec InsertEmp_SP 3,'harish' ,'mumbai',26,'male','1/03/2023','8976543290'
create proc ListEmp_sp
as begin
select * from EmpTest_tab
end
exec ListEmp_sp

use adonet;
create table Student(studentid int not null primary key,studentname varchar(30),studentbranch varchar(30),studentpercent int );
select*from Student;