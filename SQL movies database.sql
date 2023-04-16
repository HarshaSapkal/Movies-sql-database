create database movies_data;
use movies_data;
create table actor(act_id integer primary key,act_fname char(20),act_lname char(20),act_gender char(1));
create table director(dir_id integer primary key,dir_fname char(20),dir_lname char(20));
create table movie(mov_id integer primary key,mov_title char(50),mov_year integer,mov_time integer,mov_lang char(50),mov_dt_rel date,mov_rel_country char(5));
create table movie_direction(dir_id integer,mov_id integer, foreign key (dir_id) references director(dir_id),foreign key (mov_id) references movie(mov_id));
create table genre (gen_id integer primary key,gen_title char(20));
insert into actor values(1,"Deepika","padukone","f"),(2,"Ranveer","Singh","m"),(3,"Alia","Bhatt","f"),(4,"Ranbir","Kappor","m"),(5,"Aditya","Roy Kapoor","m"),(6,"Vicky","Kaushal","m"),(7,"Shah rukh","khan","m"),(8,"Akshay","kumar","m"),(9,'vin','diesel','m'),(10,"priyanka","chopra","f"),(11,'anushka','sharma','f'),(12,'kiara','advani','f'),(13,"Pankaj","tripathi","m"),(14,'Manoj','bajpayi','m'),(15,'Jaideep','ahlawat','m');	
insert into director values(1,"Rohit","shetty"),(2,'sanjay leela','bhansali'),(3,"Imtiaz","ali"),(4,"Gauri",'shinde'),(5,"Raja Krishna","Menon"),(6,"Vipul","Shah"),(7,"Meghna","Gulzar");
select*from actor;
select*from director;
insert into genre values(1,"Rom-Com"),(2,"Horror"),(3,'thriller'),(4,'Comedy'),(5,'Action'),(6,'drama'),(7,'romance'),(8,'Sci-fi'),(9,'Adventure'),(10,'Fantacy');
insert into genre values(11,'Musical'),(12,'spy-action');
select*from genre;
desc movie;
insert into movie values(1,"Piku",2015,122,'Hindi','2015-05-08','Ind');
select*from movie;
insert into movie values(2,"Ram leela",2013,155,'Hindi','2013-11-15','Ind'),(3,"Gully boy",2019,153,'Hindi','2019-02-14','Ind'),(4,"Raazi",2018,140,'Hindi','2018-05-11','Ind'),(5,"Airlift",2016,125,'Hindi','2016-01-22','Ind'),(6,"xXx:The return of xander cage",2017,107,'English','2017-01-05','Mex'),(7,"Furious 7",2015,137,'English','2015-03-01','US');
insert into movie values(8,"Chhapaak",2020,120,'Hindi','2020-01-10','Ind');
create table  movie_genres (mov_id integer, gen_id integer, foreign key (mov_id) references movie(mov_id), foreign key (gen_id) references genre(gen_id));
insert into movie_genres values (1,6),(2,7),(3,11),(4,12),(5,3),(6,12),(7,5),(8,6);
alter table movie_genres drop constraint fo;
show create table movie_genres;
create table reviewer(rev_id integer ,rev_name char(30));
alter table reviewer add constraint primary key(rev_id);
insert into reviewer values(101,'Harsha sapkal'),(102,'Mitesh achrinekar'),(103,'Mehzabin mansuri'),(104,'Diksha bhosle'),(105,'Trupti kulye'),(106,'Vedant kamble'),(107,'Pratik rai'),(108,'Vaishnavi mithapelli'),(109,'Niket more'),(110,'Sumit mishra');
create table rating (mov_id integer,rev_id integer,rev_stars integer,num_o_ratings integer,foreign key(mov_id) references movie(mov_id), foreign key(rev_id) references reviewer(rev_id));
insert into rating values (1,101,4,23345),(2,102,4,34987),(3,103,4,76333),(4,104,4,65499),(5,105,3,74655),(6,106,3,56455),(7,107,3.5,45909),(8,108,3,8769);
create table movie_cast (act_id integer,mov_id integer, role char(30),foreign key (act_id) references actor(act_id),foreign key(mov_id) references movie(mov_id));
insert into movie_cast values(1,1,'Piku'),(1,2,'Leela'),(1,6,'Serena Unger'),(1,8,'Malti'),(2,2,'Ram'),(2,3,'Murad ahmed'),(3,3,'Safeena'),(3,4,'Sehmat'),(6,4,'Iqbal syed'),(9,6,'Xander cage'),(9,7,'Dominic toretto');
show tables;
select*from actor;
select*from director;
select*from movie_direction;
select*from movie_cast;
select*from movie;
select*from reviewer;
select*from genre;
select*from movie_genres;
select*from rating;
insert into director values(8,"Shoojit", 'Sircar'),(9,'Zoya','akhtar'),(10,'D.J.','Caruso'),(11,'James','Wan');
insert into movie_direction values(8,1),(2,2),(9,3),(7,4),(5,5),(10,6),(11,7),(7,8);
select*from movie_direction;







