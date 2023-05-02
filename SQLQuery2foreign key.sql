
create Database Movies2;
use Movies2;

create table Roles(roll_id int not null primary key,roll_name varchar(20));
insert into Roles values (1,'director'),(2,'producer'),(3,'singer'),(4,'choreographer');
------------------------------------------

create table Movies (movie_id int not null primary key,movie_name varchar(30),release_year int ,Collection int);



insert into Movies values(101,'RRR',2022, 12000000),(102,'kgf chapter2',2022,1000000),(103,'Pushpa',2021,3000000),(104,'bahubali 2',2017,11000000);
--------------------------------------------------------------

create table Celebrity (celeb_id int not null primary key,celeb_name varchar(20),birthdate int,ph_no varchar(10),email varchar(20));
insert into  Celebrity values ( 10,'Ram charan', 1985,8688545321,'ramchran@gmail.com'),(20,'yash',1986,8956784536,'yash@gamil.com'),
(30,'Allu arjun', 1982 ,9087654322,'Alluarjun@gmail.com'),(40,'Prabhas', 1979 , 8990675432,'prabhas@gmail.com');
----------------------------------------------------------------------------

create table Bollywood_data (Bollywood_data_id  int not null primary key,celebrityid int,movieid int,rollid int);

alter table Bollywood_data add constraint fk_celeb foreign key(celebrityid) references Celebrity(celeb_id);
alter table Bollywood_data add constraint fk_movi foreign key(movieid) references Movies(movie_id);
alter table Bollywood_data add constraint fk_roll foreign key(rollid) references Roles(roll_id);
insert into Bollywood_data values( 11, 10,101,1),(22,20,102,2),(33,30,103,3),(44,40,104,4);



select*from Bollywood_data;
select*from Celebrity;
select* from Movies;
select* from Roles;

sp_help Bollywood_data;

---inner join query on movie database.
select movie_name from Movies where release_year = 2021; -- movie name release in year 2021
select release_year,count(*) from Movies group by release_year; -- year wise movie count
select m.movie_name from Movies m join celebrity c on c.celeb_name = (select celeb_name from celebrity where celeb_name = 'yash');


create database Fbuser2;
use Fbuser2;

create table Fbuser (Userid int not null primary key,username varchar(30),email varchar(20),phoneno varchar(10),totalpost int);

create table Post(post_id int  not null primary key , userid int,PostContent varchar(20), postimage int,constraint fk_user foreign key(userid) references Fbuser(Userid));

create table friendship_status(status_code int primary key ,status varchar(20));

create table Friendship(userid int ,friend_id int primary key , status_code int,constraint fk_status foreign key (status_code) references friendship_status(status_code));


--------------------------------------------------
create database cricket2;
use cricket2;

create table Countries(country_id int not null primary key,country_name varchar(20));

create table formt ( format_id int not null primary key, format_name varchar(20));

create table Batsman(player_id int not null primary key , player_name varchar(30),age int,countryid int,total_runs int,total_50s int,total_100s int,player_grade
varchar(3) , constraint fk_country foreign key(countryid) references Countries(country_id));

create table B_fmapping(id int not null primary key, playerid int,formatid int);
alter table B_fmapping add constraint fk_player foreign key(playerid) references Batsman(player_id);
alter table B_fmapping add constraint fk_format foreign key (formatid) references formt(format_id);


-------------------
create database 