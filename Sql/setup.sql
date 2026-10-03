-- MySQL Workbench  8.0 CE

drop database if exists tickets_and_teams;
create database tickets_and_teams;

use tickets_and_teams;

create table teams(
	team_id varchar(2) primary key,
    team varchar(25),
    department varchar(20)
);

insert into teams (team_id,team,department) values
("T1","AccountCare","Service"),
("T2","BillingHelp","Service"),
("T3","AppSupport","Technical"),
("T4","DeviceHelp","Technical");


create table tickets(
	ticket_id int primary key,
    month varchar(3),
    team_id varchar(2),
    foreign key (team_id) references teams(team_id),
    channel varchar(15),
    resolution_hours int,
    satisfaction int
);

insert into tickets(ticket_id,month,team_id,channel,resolution_hours,satisfaction) values 
(1,"Jan","T1","Email",12,4),
(2,"Jan","T2","Chat",28,3),
(3,"Jan","T3","Phone",36,2),
(4,"Jan","T4","Email",20,4),
(5,"Feb","T1","Chat",8,5),
(6,"Feb","T2","Phone",30,3),
(7,"Feb","T3","Email",18,4),
(8,"Feb","T4","Chat",40,2),
(9,"Mar","T1","Phone",16,4),
(10,"Mar","T2","Email",22,4),
(11,"Mar","T3","Chat",32,3),
(12,"Mar","T4","Phone",24,5);
