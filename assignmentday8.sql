drop database assignment8;
create database healthcareoperation;
use healthcareoperation;
create table admin(id int not null primary key,Name varchar(25) not null,DOB date not null,Gender varchar(10) not null,Contact varchar(11) not null,Homeaddress varchar(70) not null,Maritalstatus varchar(10) not null,Qualification varchar(20) not null,Position varchar(30),DOE date not null);
create table patient(id int not null primary key,Name varchar(25) not null,Gender varchar(10) not null,Contact varchar(11) not null,Address varchar(70) not null,Maritalstatus varchar(10) not null,DOB date not null);
create table doctorstable(id int not null primary key,Name varchar(25) not null,DOB date not null,Gender varchar(10) not null,Contact varchar(11) not null,Homeaddress varchar(70) not null,Maritalstatus varchar(10) not null,Qualification varchar(20) not null,Position varchar(30),DOE date not null);
create table nurse(id int not null primary key,Name varchar(25) not null,DOB date not null,Gender varchar(10) not null,Contact varchar(11) not null,Homeaddress varchar(70) not null,Maritalstatus varchar(10) not null,Qualification varchar(20) not null,Position varchar(30),DOE date not null);
create table non_medicalstaff(id int not null primary key,Name varchar(25) not null,DOB date not null,Gender varchar(10) not null,Contact varchar(11) not null,Homeaddress varchar(70) not null,Maritalstatus varchar(10) not null,Qualification varchar(20) not null,Position varchar(30),DOE date not null);

insert into admin(id,Name,DOB,Gender,Contact,Homeaddress,Maritalstatus,Qualification,Position,DOE) values
(1,'Hamsat Lawal', '1970-06-25','Male','08145698752','No 25 Highway Street','Married','Msc public Admin','Senior Admin Office1','2000-02-27'),
(2, 'Helen Paul Okeke','1996-07-14','Female','08123654789','No 50 Gimbya street','Single','Bsc OTM','Junior Admin officer5','2000-09-14'),
(3,'Godswill Akpabio Akpan','1974-01-21','Male','09051254565','No 45 Abacha way','Married','Msc Public Admin','Senior Admin officer2','2002-02-27'),
(4,'Ogundare Ania','1982-07-14','Male','07045877878','No 20 Esther street','Married','Bsc OTM','Junior Admin officer3','2015-10-24'),
(5,'Janet Oluwaremilekun','1965-10-25','Female','07014789632','No 50 old Arab road','Married','PHD OTM','Director and supervisor','1995-07-22'),
(6,'Hope Ogba','1995-09-09','Female','08096321458','No 265 Oliver street','Married','HND OTM','Junior officer4','2016-02-27'),
(7,'Kunle Afod','1993-10-09','Male','09091321458','No 25 Kunle street','Single','HND OTM','Junior officer1','2015-02-27'),
(8,'Mary Yinusa','1995-09-09','Female','07045821458','No 35 Obde street','Single','HND OTM','Junior officer1','2013-12-07');

select * from admin;
update admin set Qualification='BSC Business admin' WHERE ID = 2;
delete from admin where id = 8;

create index secondaryindex on admin(Qualification);
show index from admin;

insert into doctorstable(id,Name,DOB,Gender,Contact,Homeaddress,Maritalstatus,Qualification,Position,DOE) values
(1,'Oseni Lawan', '1990-06-25','Female','08123569877','No 28 Redeem Street','Married','Msc Soc and art','Senior Admin Office1','2010-02-27'),
(2,'Hauwa Latifat', '2002-06-25','Male','08145698752','No 25/08 Subway Street','Married','Bsc public Admin','Junior Admin Office1','2020-02-27'),
(3,'Kunle Amed','1993-10-09','Male','07091886458','No 76 omikunle street','Single','HND pub admin','Junior officer1','2013-07-27'),
(4,'Umeh Abraham','1990-11-02','Female','08091321478','No 35 Kunle road','Single','OND OTM','Senior officer3','2019-10-28'),
(5,'Kunle Afod','1995-10-11','Male','07091421058','No 272 Asaba lane','Divorced','HND Health science','Junior officer1','2018-02-27'),
(6,'Hope Odera','1995-09-09','Female','08093389458','No 265 Lagos street','Married','Msc OTM','Junior officer2','2016-09-21'),
(7,'Henry Ogbu','1990-12-02','Male','07096321058','No 8 off Aku road','Single','Bsc Biotechnology','Junior officer6','2011-02-27'),
(8,'Onume David','1992-07-31','Male','08096321458','No 26 Sylvia complex','Married','Msc Biotechnology','Junior officer1','2016-02-27'),
(9,'Mary Jane','1995-09-09','Female','07095811454','No 28 Ejik street','Single','OND OTM','Junior officer3','2013-12-07'),
(10,'Abia Chinyere','1996-12-03','Female','07042820458','No 35 Unn road','Single','Bsc Microbiology','Junior officer4','2015-12-07'),
(11,'Zakin Yakubu','1993-09-04','Male','07043021498','No 20 Tiles street','Single','Bsc OTM','Junior officer3','2012-05-04'),
(12,'Ozoemena Chinyere C','1985-01-21','Female','09051264535','No 34 Odume way','Married','Phd Public Admin','Senior Admin officer1','2001-06-21'),
(13,'Godswill Anayo Ayogu','1974-01-21','Male','08051256665','No 45 11/45 curve','Single','Bsc Public Admin','Junior Admin officer4','2010-08-29'),
(14,'Okey Amara','1990-06-11','Female','07051254565','No 2 idiroko station','Single','Msc Health science','Senior Admin officer2','2019-07-16'),
(15,'Godswill Anita','1990-01-29','Female','08051252565','No 33 railway road','Married','Phd Health science','Head officer2','2007-02-27'),
(16,'Paul Ahmed','1982-07-14','Male','07025878878','up 20 Adamu street','Married','Msc OTM','Senior Admin officer4','2015-10-24'),
(17,'Ugwu John M','1983-11-12','Male','07065873078','off Adike market','Single','Bsc Pub admin','Junior Admin officer3','2012-10-24'),
(18,'Balogun Folabi','1970-06-19','Male','09040377978','No 20 Ahmed street','Married','Msc Health admin','Senior Admin officer3','2011-05-24'),
(19,'Okafor Emmanuel','1989-07-14','Male','08045287376','No 52 island way','Married','Phd OTM','Senior Admin officer1','2010-07-30'),
(20,'Ofor Prince','1982-07-14','Male','09145867378','No 3 University street','Married','Msc Pub admin','Senior Admin officer3','2009-10-24');

insert into non_medicalstaff(id,Name,DOB,Gender,Contact,Homeaddress,Maritalstatus,Qualification,Position,DOE) values
(1,'Mmesom Ogbu','1995-09-09','Female','08093389458','No 265 Lagos street','Married','Msc OTM','Junior officer2','2016-09-21'),
(2,'Goodwill Amara','1990-01-29','Female','08051252565','No 33 railway road','Married','Phd Health science','Head officer2','2007-02-27'),
(3,'Ogadimma Mercy','1985-01-21','Female','09051264535','No 34 Odume way','Married','Phd Public Admin','Senior Admin officer1','2001-06-21'),
(4,'Cliff Adore','1984-07-14','Male','07025878878','up 20 Adamu street','Married','Msc OTM','Senior Admin officer4','2015-10-24'),
(5,'Ugwuja JohnP','1983-11-12','Male','07065873078','off Adike market','Single','Bsc Pub admin','Junior Admin officer3','2012-10-24'),
(6,'Oseni Nemerem', '1994-06-25','Female','08123569877','No 28 Redeem Street','Married','Msc Soc and art','Senior Admin Office1','2010-02-27'),
(7,'Umeh Isaac','1990-11-02','Female','08091321478','No 35 Kunle road','Single','OND OTM','Senior officer3','2019-10-28'),
(8,'Okoro Martins','1989-07-14','Male','08045287376','No 52 island way','Married','Phd OTM','Senior Admin officer1','2010-07-30'),
(9,'Hauwa Ladifat', '2002-06-25','Female','08145698752','No 25/08 Subway Street','Married','Bsc public Admin','Junior Admin Office1','2020-02-27'),
(10,'Mariam Janet','1995-09-09','Female','07095811454','No 28 Ejik street','Single','OND OTM','Junior officer3','2013-12-07'),
(11,'Tylor David','1982-07-14','Male','09145867378','No 3 University street','Married','Msc Pub admin','Senior Admin officer3','2009-10-24'),
(12,'Kumiyi Afody','1995-10-11','Male','07091421058','No 272 Asaba lane','Divorced','HND Health science','Junior officer1','2018-02-27'),
(13,'Joy Azuka','1995-09-09','Female','08093389458','No 265 Lagos street','Married','Msc OTM','Junior officer2','2016-09-21'),
(14,'Harrison Odina','1990-12-02','Male','07096321058','No 8 off Aku road','Single','Bsc Biotechnology','Junior officer6','2011-02-27'),
(15,'Odume John','1992-07-31','Male','08096321458','No 26 Sylvia complex','Married','Msc Biotechnology','Junior officer1','2016-02-27'),
(16,'Mary Cynthiana','1995-09-09','Female','07095811454','No 28 Ejik street','Single','OND OTM','Junior officer3','2013-12-07'),
(17,'Abiara Domy','1996-12-03','Male','07042820458','No 35 Unn road','Single','Bsc Microbiology','Junior officer4','2015-12-07'),
(18,'Ijeoma Emilia','1996-12-03','Female','07042820458','No 35 Unn road','Single','Bsc Microbiology','Junior officer4','2015-12-07'),
(19,'Zakin H','1993-09-04','Male','07043021498','No 20 Tiles street','Single','Bsc OTM','Junior officer3','2012-05-04'),
(20,'Blessing Ugwuja','1985-01-21','Female','09051264535','No 34 Odume way','Married','Phd Public Admin','Senior Admin officer1','2001-06-21');
select * from non_medicalstaff;

insert into nurse(id,Name,DOB,Gender,Contact,Homeaddress,Maritalstatus,Qualification,Position,DOE) values
(1,'Umaru Abram','1990-11-02','Female','08109321478','No 85 Kunli road','Single','HND OTM','Senior officer3','2019-10-28'),
(2,'Okoro Matt','1989-07-14','Male','07045287376','No 52 isand way','Single','Phd OTM','Senior Admin officer1','2010-07-30'),
(3,'Hauwas Ladia', '2002-06-25','Female','08145698752','No 25/08 Subway Street','Married','Bsc public Admin','Junior Admin Office1','2020-02-27'),
(4,'Maria Janet','1995-09-09','Female','07095811454','No 28 Ejik street','Single','OND OTM','Junior officer3','2013-12-07'),
(5,'Okoro Dave','1982-07-14','Male','09145867378','No 3 University street','Married','Msc Pub admin','Senior Admin officer3','2009-10-24'),
(6,'Kuje Afoms','1995-10-11','Male','07091421058','No 272 Asaba lane','Divorced','HND Health science','Junior officer1','2018-02-27'),
(7,'Lauretha Odeke','1995-09-09','Female','08093389458','No 265 Lagos street','Married','Msc OTM','Junior officer2','2016-09-21'),
(8,'Jane Oluwaremi','1965-10-25','Female','07014789632','No 50 old Arab road','Married','PHD OTM','Director and supervisor','1995-07-22'),
(9,'Hope Ogbakuru','1995-09-09','Female','08096321458','No 265 Oliver street','Married','HND OTM','Junior officer4','2016-02-27'),
(10,'Kamaru Afodile','1993-10-09','Male','09091321458','No 25 Kunle street','Single','HND OTM','Junior officer1','2015-02-27'),
(11,'Princess Yinka','1995-09-09','Female','07045821458','No 35 Obde street','Single','HND OTM','Junior officer1','2013-12-07'),
(12,'Harrison Obetta','1990-12-02','Male','07096321058','No 8 off Aku road','Single','Bsc Biotechnology','Junior officer6','2011-02-27'),
(13,'Nduka John','1992-07-31','Male','08096321458','No 26 Sylvia complex','Married','Msc Biotechnology','Junior officer1','2016-02-27'),
(14,'Mary Sylvester','1995-09-09','Female','07095811454','No 28 Ejik street','Single','OND OTM','Junior officer3','2013-12-07'),
(15,'Abia Dobi','1996-12-03','Male','07042820458','No 35 Unn road','Single','Bsc Microbiology','Junior officer4','2015-12-07'),
(16,'Abugu Esther','1996-12-03','Female','07042820458','No 35 Unn road','Single','Bsc Microbiology','Junior officer4','2015-12-07'),
(17,'Zaku Pascal','1993-09-04','Male','07043021498','No 20 Tiles street','Single','Bsc OTM','Junior officer3','2012-05-04'),
(18,'Goodness Amarachi','1990-01-29','Female','08051252565','No 33 railway road','Married','Phd Health science','Head officer2','2007-02-27'),
(19,'Ogadi Bless','1985-01-21','Female','09051264535','No 34 Odume way','Married','Phd Public Admin','Senior Admin officer1','2001-06-21'),
(20,'Clifford Williams','1984-07-14','Male','07025878878','up 20 Adamu street','Married','Msc OTM','Senior Admin officer4','2015-10-24');

insert into patient(id,Name,Gender,Contact,Address,Maritalstatus,DOB) values
(1,'Laureth Odeka','Female','08093389458','No 265 Lagos street','Married','2016-09-21'),
(2,'Janeth Oluwani','Female','07014789632','No 50 old Arab road','Married','1995-07-22'),
(3,'Rejoice Ogbakuru','Female','08096321458','No 265 Oliver street','Married','2016-02-27'),
(4,'Kamaru Kenneth','Male','09091321458','No 25 Kunle street','Single','2015-02-27'),
(5,'Princess Minka','Female','07045821458','No 35 Obde street','Single','2013-12-07'),
(6,'Harrison Oyirinna','Male','07096321058','No 8 off Aku road','Single','2011-02-27'),
(7,'Tylor Davedson','Male','09145867378','No 3 University street','Married','2009-10-24'),
(8,'Kumiyi Afodil','Male','07091421058','No 272 Asaba lane','Divorced','2018-02-27'),
(9,'Joyce Azuka','Female','08093389458','No 265 Lagos street','Married','2016-09-21'),
(10,'Harry Odina','Male','07096321058','No 8 off Aku road','Single','2011-02-27'),
(11,'Ugwuja John','Male','08096321458','No 26 Sylvia complex','Married','2016-02-27'),
(12,'Maryian Cynthiana','Female','07095811454','No 28 Ejik street','Single','2013-12-07'),
(13,'Abiara Dorcas','Male','07042820458','No 35 Unn road','Single','2015-12-07'),
(14,'Harriboy Ogbu','Male','07096321058','No 8 off Aku road','Single','2011-02-27'),
(15,'Odume David','Male','08096321458','No 26 Sylvia complex','Married','2016-02-27'),
(16,'Mary Chioma','Female','07095811454','No 28 Ejik street','Single','2013-12-07'),
(17,'Eze Chinyere','Female','07042820458','No 35 Unn road','Single','2015-12-07'),
(18,'Zaria Yakubu','Male','07043021498','No 20 Tiles street','Single','2012-05-04'),
(19,'Ozor Chinyere C','Female','09051264535','No 34 Odume way','Married','2001-06-21'),
(20,'Godslove Adimchi','Female','08051256665','No 45 11/45 curve','Single','2010-08-29');














