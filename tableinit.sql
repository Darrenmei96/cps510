/*
--Create a table for the contact info entity
create table ContactInfo(
	phone number default 14161234567,
	email varchar2(40) default 'johnsmith@email.ca',
	primary key (phone)
);*/

--Create a table for person entity
/*
	FDs
		sin -> (name,birthdate,phone,email)
*/
create table Person(
	sin number default 111222333 not null,
	name varchar2(20) default 'John Smith' not null,
	birthdate date,
	phone number default 14161234567,
	email varchar2(40) default 'johnsmith@email.ca',
	primary key (sin)
);

--Create a table for the passport entity
/*
	FDs
		passportnumber -> country
*/
create table Passport(
	passportnumber varchar2(10) not null,
	country varchar2(2) default 'CA' not null,
	primary key (passportnumber)
);

--Create a table for a holds relationship
--1-1 relation, sin <-> passportnumber
create table holds(
	sin number references person(sin) on delete cascade,
	passportnumber varchar2(10) references passport(passportnumber) on delete cascade,
	primary key (sin,passportnumber)
);

--Create a table for the luggage entity
/*
	FDs
		luggageid->weight
*/
create table Luggage(
	luggageid number not null,
	weight number default 23,
	primary key (luggageid)
);

--Create a table for the carries relationship
--1-1 relationship, sin <-> luggageid
create table carries(
	sin number references person(sin) on delete cascade,
	luggageid number references Luggage(luggageid) on delete cascade,
	primary key (sin,luggageid)
);

--Create a table for the plane ticket entity
/*
	FDs
		ticketnumber -> (classtype,seatnumber,mealplan)
*/
create table PlaneTicket(
	ticketnumber number not null,
	classtype varchar2(20) default 'Economy',
	seatnumber varchar2(3),
	mealplan varchar(10) default 'Steak',
	primary key (ticketnumber)
);

--Create a table for the books relationship
--1-1 relationship, passportnumber <-> ticketnumber
create table books(
	passportnumber varchar2(10) references Passport(passportnumber) on delete cascade,
	ticketnumber number references PlaneTicket(ticketnumber) on delete cascade,
	primary key(passportnumber, ticketnumber)
);


--Create a table for the flight entity
/*
	FDs
		flightnumber -> (departuredatetime,arrivaldatetime)
*/
create table Flight(
	flightNumber number not null,
	departureDateTime timestamp not null,
	arrivalDateTime timestamp not null,
	primary key (flightNumber)
);


--Create a table for the confirms relationship
/*
	FDs
		ticketnumber -> flightnumber
*/
create table confirms(
	ticketnumber number references planeticket(ticketnumber) on delete cascade,
	flightnumber number references Flight(flightnumber) on delete cascade,
	primary key(ticketnumber)
);

--Create a table for the airport entity
/*
	FDs
		airportcode -> (address,airportname)
*/
create table Airport(
	airportCode varchar2(4) not null,
	address varchar2(40),
	airportName varchar2(40),
	primary key (airportCode)
);

--Create a table for the airplane entity
/*
	FDs
		serialnumber -> (airplanemanufacturer,seatlimit)
*/
create table Airplane(
	serialNumber varchar2(10) not null,
	airplaneManufacturer varchar2(20),
	seatLimit number,
	primary key (serialNumber)
);

/*
	FDs
		employeeid -> employeename
*/
create table TicketAgentEmployee(
	EmployeeID number not null,
	EmployeeName varchar2(20) not null,
	primary key (EmployeeID)
);

/*
	FDs
		(employeeid,airportcode) -> assignedbooth
*/
create table worksAt(
	employeeid number references TicketAgentEmployee(employeeid) on delete cascade,
	airportCode varchar(4) references Airport(airportCode) on delete cascade,
	AssignedBooth varchar2(10),
	primary key (employeeid, airportCode)
);

--Create a table for the flies with relationship
--1-1 relationship, serialnumber <-> flightnumber
create table fliesWith(
	serialnumber varchar2(10) references Airplane(serialnumber) on delete cascade,
	flightnumber number references Flight(flightnumber) on delete cascade,
	primary key (serialnumber, flightnumber)
);


--Create a table for the flying relationships
/*
	FDs
		flightnumber -> (airportsrccode,airportdstcode)
*/
create table fliesFromTo(
	flightnumber number references flight(flightnumber) on delete cascade,
	airportSRCcode varchar2(4) references airport(airportcode) on delete cascade,
	airportDSTcode varchar2(4) references airport(airportcode) on delete cascade,
	primary key(flightnumber)
);

--Create a table for the controls relationship
/*
	FDs
		flightnumber -> airportcode
*/
create table controls(
	flightnumber number references flight(flightnumber) on delete cascade,
	airportcode varchar2(4) references airport(airportcode) on delete cascade,
	primary key (flightnumber)
);

exit;
