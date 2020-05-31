create database project;
show databases;
use project;
show tables;
create table users(
userid varchar(20) primary key,
password varchar(20) not null,
username varchar(30) unique not null,
contact_num bigint not null,
email varchar(40) unique not null,
department varchar(20) not null,
family_members int not null
);

create table eventtypes(
id int primary key auto_increment,
type_name varchar(20) unique not null
);

create table events(
eventid varchar(20) primary key,
event_name varchar(30) not null,
event_type int not null ,
event_date_time datetime not null,
organiser_id varchar(20) not null,
max_attendees int not null,
foreign key(event_type) references eventtypes(id),
foreign key(organiser_id) references users(userid)
);

create table registration(
reg_id varchar(20) primary key,
event_id varchar(20) not null,
user_id varchar(20) not null,
members_count int not null,
reg_time timestamp default current_timestamp,
foreign key (event_id) references events(eventid),
foreign key(user_id) references users(userid)
);
