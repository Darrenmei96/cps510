
--Create a table for the passenger entity
create table Passenger(
    passportnumber varchar2(10) not null,
    name varchar2(25) default 'Dee Falt' not null,
    birthdate date,
    email varchar2(50) not null,
    phonenumber number default 14161234567,
    primary key (passportnumber)
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
    passportnumber varchar2(10) references passenger(passportnumber),
    primary key (luggageid, passportnumber)
);

--Create a table for the plane ticket entity
create table PlaneTicket(
    ticketnumber number not null,
    classtype varchar2(25) default 'Economy',
    seatnumber varchar2(3),
    primary key (ticketnumber)
);

--Create a table for the meal plan entity
create table Mealplan(
    mealPlanName varchar2(25),
    primary key (mealPlanName)
);

--Create a table for the adds on relationship
create table addsOn(
	ticketnumber number references planeticket(ticketnumber) on delete cascade,
    mealplanname varchar2(25) references mealplan(mealplanname) on delete cascade,
    primary key (ticketnumber, mealplanname)
);

--Create a table for the books relationship
create table books(
    ticketnumber number references PlaneTicket(ticketnumber) on delete cascade,
    passportnumber varchar2(10) references passenger(passportnumber) on delete cascade,
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
    airplaneManufacturer varchar2(50),
    seatLimit number,
    airplaneModel varchar2(20),
    primary key (serialNumber)
);

--Create a table for the flies with relationship
create table fliesWith(
    planeserial number references Airplane(serialnumber) on delete cascade,
	flightnumber number references Flight(flightnumber) on delete cascade,
    primary key (planeserial, flightnumber)
);

--Create a table for the employee entity
create table Employee(
    EmployeeID number not null,
    EmployeeName varchar2(25) not null,
    primary key (EmployeeID)
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

--Create a table for the airport entity
create table Airport(
    airportCode varchar2(4) not null,
    address varchar2(50),
    airportName varchar2(50),
    primary key (airportCode)
);

--Create a table for the works at relationship
create table worksAt(
    employeeid number references Employee(employeeid) on delete cascade,
    airportCode varchar(4) references Airport(airportCode) on delete cascade,
    primary key (employeeid, airportCode)
);

--Create a table for the destines at relationship
create table destinesAt(
	flightnumber number references flight(flightnumber) on delete cascade,
	airportcode varchar2(4) references airport(airportcode) on delete cascade,
	primary key (flightnumber, airportcode)
); 

--Create a table for the originates from relationship
create table originatesFrom(
	flightnumber number references flight(flightnumber) on delete cascade,
	airportcode varchar2(4) references airport(airportcode) on delete cascade,
	primary key (flightnumber, airportcode)
);

--Create a table for the controls relationship
create table controls(
	flightnumber number references flight(flightnumber) on delete cascade,
	airportcode varchar2(4) references airport(airportcode) on delete cascade,
	primary key (flightnumber, airportcode)
);


