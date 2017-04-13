drop table if exists City;
drop table if exists Country;


create table Country(
Country_Name varchar(64) primary key,
Continent varchar(64) not null
);

create table City(
City_Name varchar(128),
Country_Name varchar(128),
isCapital char(3) not null,
Population number not null,
primary key(City_Name, Country_Name),
foreign key (Country_Name) references Country(Country_Name)
);

insert into Country (Country_Name, Continent) values ('US', 'North America');
insert into Country (Country_Name, Continent) values ('Canada', 'North America');
insert into Country (Country_Name, Continent) values ('England', 'Europe');
insert into Country (Country_Name, Continent) values ('Germany', 'Europe');
insert into Country (Country_Name, Continent) values ('France', 'Europe');
insert into Country (Country_Name, Continent) values ('Mali', 'Africa');


insert into City (City_Name, Country_Name, isCapital, Population) values ('New York, NY', 'US', 'no', 8000000);
insert into City (City_Name, Country_Name, isCapital, Population) values ('Washington, DC', 'US', 'yes', 600000);
insert into City (City_Name, Country_Name, isCapital, Population) values ('Philadelphia, PA', 'US', 'no', 1500000);
insert into City (City_Name, Country_Name, isCapital, Population) values ('Ottawa', 'Canada', 'yes', 3500000);	
insert into City (City_Name, Country_Name, isCapital, Population) values ('Toronto', 'Canada', 'no', 2500000);
insert into City (City_Name, Country_Name, isCapital, Population) values ('Berlin', 'Germany', 'yes', 3500000);
insert into City (City_Name, Country_Name, isCapital, Population) values ('Hamburg', 'Germany', 'no', 2000000);
insert into City (City_Name, Country_Name, isCapital, Population) values ('Bonn', 'Germany', 'no', 300000);
insert into City (City_Name, Country_Name, isCapital, Population) values ('Paris', 'France', 'yes', 2000000);
insert into City (City_Name, Country_Name, isCapital, Population) values ('Lyon', 'France', 'no', 700000);
insert into City (City_Name, Country_Name, isCapital, Population) values ('Bamako', 'Mali', 'yes', 2000000);
insert into City (City_Name, Country_Name, isCapital, Population) values ('Timbuktu', 'Mali', 'no', 50000);
insert into City (City_Name, Country_Name, isCapital, Population) values ('Mopti', 'Mali', 'yes', 100000);
