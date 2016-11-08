--Create a table for person entity
create table Person(
	name varchar2(20) default 'Dee Falt' not null,
	email varchar2(40) not null,
	phonenumber number default 14161234567,
	primary key(name)
);

--Create a table for the passport entity
create table Passport(
    passportnumber varchar2(10) not null,
	name varchar2(20) references person(name),
    birthdate date,
    primary key (passportnumber)
);

--Create a table for a holds relationship
create table holds(
	name varchar(20) references person(name),
	passportnumber varchar2(10) references passport(passportnumber),
	primary key(name, passportnumber)
);

--Create a table for the luggage entity
create table Luggage(
    weight number default 23,
    luggageid number not null,
    primary key (luggageid)
);

--Create a table for the carries relationship
create table carries(
    luggageid number references Luggage(luggageid) on delete cascade,
    name varchar(20) references person(name),
    primary key (luggageid, name)
);

--Create a table for the plane ticket entity
create table PlaneTicket(
    ticketnumber number not null,
    classtype varchar2(20) default 'Economy',
    seatnumber varchar2(3),
	mealplan varchar(10) default 'Steak',
    primary key (ticketnumber)
);
 /* mealplan added as attribute to plane ticket
--Create a table for the meal plan entity
create table Mealplan(
    mealPlanName varchar2(15),
    primary key (mealPlanName)
);

--Create a table for the adds on relationship
create table addsOn(
	ticketnumber number references planeticket(ticketnumber) on delete cascade,
    mealplanname varchar2(15) references mealplan(mealplanname) on delete cascade,
    primary key (ticketnumber, mealplanname)
);
*/

--Create a table for the books relationship
create table books(
    ticketnumber number references PlaneTicket(ticketnumber) on delete cascade,
    --passportnumber varchar2(10) references passenger(passportnumber) on delete cascade,
    name varchar2(20) references person(name),
	primary key (ticketnumber, passportnumber)
);

--Create a table for the flight entity
create table Flight(
    flightNumber number not null,
    departureDateTime timestamp not null,
    arrivalDateTime timestamp not null,
    primary key (flightNumber)
);

--Create a table for the confirms relationship
create table confirms(
    flightnumber number references Flight(flightnumber) on delete cascade,
	ticketnumber number references planeticket(ticketnumber) on delete cascade,
    primary key(flightnumber, ticketnumber)
);

--Create a table for the airplane entity
create table Airplane(
    serialNumber number not null,
    airplaneManufacturer varchar2(40),
    seatLimit number,
    --airplaneModel varchar2(20),
    primary key (serialNumber)
);

/*
--Create a table for the flies with relationship
create table fliesWith(
    planeserial number references Airplane(serialnumber) on delete cascade,
	flightnumber number references Flight(flightnumber) on delete cascade,
    primary key (planeserial, flightnumber)
);*/

--Create a table for the airport entity
create table Airport(
    airportCode varchar2(4) not null,
    address varchar2(40),
    airportName varchar2(40),
    primary key (airportCode)
);

/*
Depreciated - merged into Employee
--Create a table for the works at relationship
create table worksAt(
    employeeid number references Employee(employeeid) on delete cascade,
    airportCode varchar(4) references Airport(airportCode) on delete cascade,
    primary key (employeeid, airportCode)
);
*/


/*
--Create a table for the employee entity
create table Employee(
    EmployeeID number not null,
    EmployeeName varchar2(20) not null,
    primary key (EmployeeID)
);
*/

/* Depreciated tables
--Merge the employee AND worksAt table
create table Employee(
    EmployeeID number not null,
	airportCode varchar2(4) references Airport(airportcode) on delete cascade,
    EmployeeName varchar2(20) not null,
    primary key (EmployeeID, airportCode)
);

--Create a table for the ticket agent entity
create table TicketAgent(
    EmployeeID number references Employee(EmployeeID) on delete cascade,
    AssignedBooth varchar2(10)
);

--Create a table for the security guard entity
create table SecurityGuard(
    EmployeeID number references Employee(EmployeeID) on delete cascade,
    assignedsector varchar2(8)
);
*/

--Merge the security guard and ticket tables
/*Depreciated
create table SecurityGuardEmployee(
	EmployeeID number not null,
	airportCode varchar2(4) references Airport(airportcode) on delete cascade,
    assignedsector varchar2(8),
    EmployeeName varchar2(20) not null,
    primary key (EmployeeID, airportCode)
);*/

create table TicketAgentEmployee(
	EmployeeID number not null,
    AssignedBooth varchar2(10),
    EmployeeName varchar2(20) not null,
    primary key (EmployeeID)
);

create table worksAt(
    employeeid number references Employee(employeeid) on delete cascade,
    airportCode varchar(4) references Airport(airportCode) on delete cascade,
    primary key (employeeid, airportCode)
);

/*
Depreciated - use fliesFromTo
--Create a table for the destines at relationship
create table destinesAt(
	flightnumber number references flight(flightnumber) on delete cascade,
	airportcode varchar2(4) references airport(airportcode) on delete cascade,
	primary key (flightnumber, airportcode)
); 
Depreciated - use fliesFromTo
--Create a table for the originates from relationship
create table originatesFrom(
	flightnumber number references flight(flightnumber) on delete cascade,
	airportcode varchar2(4) references airport(airportcode) on delete cascade,
	primary key (flightnumber, airportcode)
);
*/

--merge the destinesAt and originatesFrom tables
create table fliesFromTo(
	flightnumber number references flight(flightnumber) on delete cascade,
	airportSRCcode varchar2(4) references airport(airportcode) on delete cascade,
	airportDSTcode varchar2(4) references airport(airportcode) on delete cascade,
	primary key(flightnumber, airportSRCcode, airportDSTcode)
);

--Create a table for the controls relationship
create table controls(
	flightnumber number references flight(flightnumber) on delete cascade,
	airportcode varchar2(4) references airport(airportcode) on delete cascade,
	primary key (flightnumber, airportcode)
);

exit;
