drop table Reserves;
drop table Sailors;
drop table Boats;

create table Sailors (
  sid number primary key,
  name varchar(32) not null,
  rating number,
  age number
);

create table Boats (
  bid number primary key,
  name varchar(32) not null,
  color varchar(16)
);

create table Reserves (
  sid number,
  bid number,
  day date,
  primary key (sid, bid, day),
  foreign key (sid) references Sailors(sid),
  foreign key (bid) references Boats(bid)
);

insert into Sailors (sid, name, rating, age) values (1, 'Dustin', 7, 45);
insert into Sailors (sid, name, rating, age) values (2, 'Rusty', 10, 35);
insert into Sailors (sid, name, rating, age) values (3, 'Horatio', 5, 35);
insert into Sailors (sid, name, rating, age) values (4, 'Zorba', 8, 18);
insert into Sailors (sid, name, age) values (5, 'Andy', 25);

insert into Boats (bid, name, color) values (101, 'Interlake', 'blue');
insert into Boats (bid, name, color) values (102, 'Interlake', 'red');
insert into Boats (bid, name, color) values (103, 'Clipper', 'green');
insert into Boats (bid, name, color) values (104, 'Marine', 'red');

insert into Reserves (sid, bid, day) values (1, 101, '10-OCT-2012');
insert into Reserves (sid, bid, day) values (1, 102, '10-OCT-2012');
insert into Reserves (sid, bid, day) values (1, 101, '10-JUL-2012');
insert into Reserves (sid, bid, day) values (2, 102, '11-SEP-2012');
insert into Reserves (sid, bid, day) values (2, 102, '7-NOV-2012');
insert into Reserves (sid, bid, day) values (3, 101, '7-NOV-2012');
insert into Reserves (sid, bid, day) values (3, 102, '7-AUG-2012');
insert into Reserves (sid, bid, day) values (4, 103, '19-SEP-2012');

