
create database Bike;
use Bike;
create table Model (model_id int not null primary key,model_name varchar(20),cost int);


insert into Model values(1,'active5g',80000),(2,'jupiter',75000),(3,'access',60000),(4,'ola',120000);
create table Customer (cust_id int not null primary key , first_name varchar(10), last_name varchar(10),
mobile varchar(10), gender varchar(10),email varchar(20));
insert into Customer values(101,'vaibhav','patil','7767070356','male','vaibhav@gmail.com'),
(102,'ashwini','bhalerav','8956432178','female','ashwini@gmail.com'),(103,'rohini','ahire','8528686710','female',
'rohini@gmail.com'),(104,'mayur','sahu','7865432190','male','mayur@gmail.com');


create table Paymentmode(payment_id int not null primary key, payment_type varchar(10));
insert into Paymentmode values (11,'online'),(22,'cash'),(33,'cheque');
------------------------------------------------------------------------
create table Feedback(rating_id  int  not null primary key,rating varchar (10));
insert into Feedback values(5,'Excellent'),(4,'good'),(3,'average'),(2,'bad'),(1,'complaint');
---------------------------------------------------------------------------
create table Purchase(purchase_id int not null primary key, customerid int,modelid int,booking_amount int,
paymentid int,purchase_date varchar(10),ratingid int, constraint fk_rating foreign key(ratingid) references 
Feedback(rating_id)on delete cascade on update cascade,constraint fk_Payment foreign key(paymentid) references 
Paymentmode(payment_id)on delete cascade on update cascade,constraint fk_Custom foreign key(customerid) 
references Customer(cust_id)on delete cascade on update cascade,constraint fk_model foreign key (modelid) 
references Model(model_id)on delete cascade on update cascade);
insert into purchase Values(111,101,1,2000,11,'10 march',4),(112,102,2,4000, 22,'1 april',2),(113,104,3,5000,33,'5 april',3),
(114,103,4,6000,22,'10 apr',1);

sp_help Purchase;
select * from Model;
select * from Customer;
select * from Feedback;
select * FROM Paymentmode;
select * from Purchase;

---queries..







