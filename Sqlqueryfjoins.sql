

create database Country;
use Country;
create table  Countryvalue (country_id int not null primary key ,country_name varchar (20));
insert into Countryvalue values (1,'india'),(2,'america'),(3,'china'),(4,'japan'),(5,'srilanka');

create table States (state_id int not null primary key , state_name varchar(30), Countryid int, constraint fk_Country foreign key(Countryid) 
references Countryvalue(country_id));
insert into States values(101,'maharashtra',1),(102,'karnataka' , 1),(103,'california',2),(104,'shanghai',3),(105,'tokyo',4);


create table city(city_id int  not null primary key , city_name varchar(30),stateid int,Constraint fk_state foreign key(stateid) references 
States (state_id));

insert into city values (111,'pune',101),(222,'banglore',102),(333,'los angles',103),(444,'san joes',103);

select*from Countryvalue; 


select*from States;
select*from city;
--find out country name for state maharashtra.
select c.country_name from Countryvalue c join States s on c.country_id = s.Countryid where state_name = 'maharashra'; 

-- query to find out all the state from america.
select s.state_name from States s join Countryvalue c on s.countryid = c.country_id where country_name = 'america';
-- country name with their state name.
select c.country_name, s.state_name from Countryvalue c join States s on c.country_id= s.Countryid;
-- query to find out all city name from karnataka and california state.
select c.city_name from city c join States s on c.stateid = s.state_id where state_name = 'karnataka' or 
state_name = 'california';

-- query to find out state name in which only 1 city is present .
select s.state_name,count(*)  from States s join city c on s.state_id = c.stateid group by s.state_name 
having count(*) = 1;
-- find out country wise state count .
select c.country_name,count(*) from Countryvalue c join States s on c.country_id = s.Countryid 
group by country_name;

-- find out all state name which end with 'a' character
select * from States where state_name like '%a'; 

--- 13 april.. 

create database Authordata;
use Authordata;
create table Author (author_id int not null primary key, authorname varchar(30), city varchar(20),country varchar(20));
insert into Author values (101,'abdul kalam','tamilnadu','india'),(102,'jk crowling','washington','america'),
(103,'shuggie bain','london','uk'),(104,'stephen king','mexico','russia');
create table Catagory(catagory_id int not null primary key,description varchar(30));
insert into  Catagory values (1,'drama'),(2,'horror'),(3,'biopic');
create table Orderdatail (order_no int , bookid int,quantity int);

alter table Orderdatail add Constraint fk_book foreign key (bookid) references Book(Book_id) on delete cascade
on update cascade;
 insert into Orderdatail values (10,111,20),(20,222,40),(30,333,50);
create table Book(Book_id int not null primary key,book_title varchar(30),authorid int,catagoryid int,price int,
publisher varchar(30),rating varchar(5),constraint fk_auth foreign key(authorid) references Author(author_id),
constraint fk_cata foreign key (catagoryid) references Catagory (catagory_id)on delete cascade on update cascade);
insert into Book values (111,'wings of fire',101,3,500,'navneet','A+'),(222,'herry poter',102,1,400,'bloombury','b+'),
(333,'douglas scort',103,1,200,'khan publisher','c'),(444,'the ruins',104,2,500,'oxword','A');


select*from Author;
select * from Catagory;
select* FROM Orderdatail;



sp_help Book;
---query.

select country,count(*) from Author group by country ; -- country wise author 

-- price od drama book

-- catagory wise count
select description b,count(*) from Catagory b join Book c on b.catagory_id = c.catagoryid group by description;

----total quantity as per catagory  descending order of total quantity.
--select quantity q,count(*) from Orderdatail q join 

update Book set price = price - price*0.10 where rating = 'A' or rating = 'A+';

select book_title b, from Book b join Author a on b.authorid = a.author_id where delete book_title  where city ='tamilnadu';
