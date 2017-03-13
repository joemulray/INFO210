create table Forrest(
	name varchar(128) primary key
);

create table Tree_Made_of(
	id number primary key
	name varchar(128),
	foreign key (name) references Forrest(name)	
);



create table Mother(
 ssn char(12) primary key,
 name varchar(128),
 dob date
);

create table Child(
	ssn char(12) primary key,
	name varchar(128),
	dob date,
	mother_name varchar(128),
	foreign key (mother_name) references Mother(name)
);






create table Monarch(
	name varchar(128) primary key,
);

create table Country(
	name varchar(128) primary key,
);

create table Rules(
	monarch_name varchar(128) primary key,
	country_name varchar(128),
	foreign key (monarch_name) references Monarch(name),
	foreign key (country_name) references Country(name)
);

