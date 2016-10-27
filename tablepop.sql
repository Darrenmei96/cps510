--Populate the SQL tables
insert into Passenger values('A1234569','DARREN MEI','30-Jan-1996','darren.mei@ryerson.ca',4161112222);
insert into Passenger values('B1234569','SHENLEY RODWORTH','01-APRIL-1990','abc@ryerson.ca',2890101011);
insert into Passenger values('C1234569','BOBBY GREY','20-DEC-2000','abc@ryerson.ca',6470038032);


insert into Luggage values(19.8,1232434);
insert into Luggage values(22,1232436);
insert into Luggage values(20,1232437);

insert into carries values(1232434,'A1234569'); 
insert into carries values(1232436, 'B1234569');

insert into PlaneTicket values(1234,'Economy','D12');
--insert into PlaneTicket values(1453,'Economy','A12');
insert into PlaneTicket values(1233, 'First Class', 'A4');
insert into PlaneTicket values(1232, 'Business', 'H5');

insert into Mealplan values('Vegan');
insert into Mealplan values('Children');
insert into Mealplan values('Chicken');
insert into Mealplan values('Pasta');

insert into addsOn values(1234,'Vegan');
--insert into addsOn values(1453,'Vegan');
insert into addsOn values(1233, 'Chicken');
insert into addsOn values(1232, 'Pasta');

insert into books values(1233,'A1234569');
insert into books values(1232,'B1234569');

insert into Flight values(1506,timestamp'2016-10-05 21:35:00',timestamp'2016-10-06 10:30:00');
insert into Flight values(1234,timestamp'2016-10-05 21:35:00',timestamp'2016-10-05 23:30:00');
--insert into Flight values(4321,timestamp'2016-10-06 14:35:00',timestamp'2016-10-06 18:30:00');
--insert into Flight values(1324,timestamp'2016-10-05 21:35:00',timestamp'2016-10-06 11:30:00');

insert into confirms values(1506, 1233);
insert into confirms values(1234, 1232);

insert into Airplane values(747,'Boeing Commercial Airplanes',200,'747SR-81');
insert into Airplane values(777,'Airbus Groups',200,'747SR-81');

insert into fliesWith values(777,1234);
insert into fliesWith values(747,1506);

--insert into Employee values(31245,'YYZ','John Smith');
--insert into Employee values(4321,'HNZ','Tom Smith');
--insert into Employee values(12345,'Jerry Smith');

--insert into TicketAgent values(31245,'Booth 6');
--insert into SecurityGuard values(4321, 'Gate 5');
--insert into SecurityGuard values(12345, 'Gate 8');

insert into Airport values('YYZ','6301 Silver Dart Dr','Toronto Pearson International Airport');
insert into Airport values('HND', 'Hanedakuko, Ota, Tokyo 144-0041', 'Tokyo International Airport');

--insert into worksAt values(31245, 'YYZ');
--insert into worksAt values(4321, 'HND');
--insert into worksAt values(12345, 'YYZ');

insert into SecurityGuardEmployee values(4321,'HND','Gate 5','Tom Smith');
insert into TicketAgentEmployee values(31245,'YYZ','Booth 6','John Smith');

--insert into destinesAt values(1506, 'YYZ');
--insert into originatesFrom values(1506, 'HND');
insert into fliesFromTo values(1506, 'HND', 'YYZ');

insert into controls values(1506, 'YYZ');

exit;
