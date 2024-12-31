create database Movies;
use Movies;

create table actor
(
act_id int primary key,
act_fname varchar(20) ,
act_lname varchar(20) ,
act_gender varchar(1) ,
)
create table director
(
dir_id int primary key,
dir_fname varchar(20) ,
dir_lname varchar(20) ,
)
create table movie
(
mov_id int primary key,
mov_title varchar(50) ,
mov_year  int  ,
mov_time  int  ,
mov_lang varchar(50),
mov_dt_rel date,
mov_rel_country varchar(5)
)
create table genres
(
gen_id int primary key,
gen_title varchar(20) ,
)

create table reviewer
(
rev_id int primary key,
rev_name varchar(20) ,
)
create table movie_cast
(
act_id int ,
mov_id int ,
role varchar(30),
primary key(act_id,mov_id),
foreign key (act_id) references actor(act_id),
foreign key (mov_id) references movie(mov_id),

)
create table movie_directon
(
dir_id int ,
mov_id int ,
primary key(dir_id,mov_id),
foreign key (dir_id) references director(dir_id),
foreign key (mov_id) references movie(mov_id),

)
create table movie_genres
(
mov_id int,
gen_id int ,
primary key(mov_id,gen_id),
foreign key (gen_id) references genres(gen_id),
foreign key (mov_id) references movie(mov_id)

)




create table rating
(
mov_id int,
rev_id int ,
rev_stars int,
num_o_ratings int,
primary key(mov_id,rev_id),
foreign key (rev_id) references reviewer(rev_id),
foreign key (mov_id) references movie(mov_id)

)


