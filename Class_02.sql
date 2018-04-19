create database imbd;
create table film(
	film_id int(11) not null auto_increment,
	title varchar(40) not null,
	description varchar(200),
	relese_year date,
	constraint films_pk primary key (film_id));

create table actor(
	actor_id int(11) not null auto_increment,
	first_name varchar(40) not null,
	last_name varchar(80) not null,
	constraint actors_pk primary key (actor_id));

create table film_actor(
	actor_id int(11),
	film_id int(11));

alter table film add last_update date after relese_year;
alter table actor add last_update date after last_name;

alter table film_actor add constraint fk_ac_film_1 foreign key (actor_id, location) references actor (actor_id, location);
alter table film_actor add constraint fk_ac_film_2 foreign key (film_id, location) references film (film_id, location);
