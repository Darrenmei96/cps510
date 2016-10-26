--Populate the SQL tables
insert into Passenger values('A1234569','SAM SMITH','01-Jan-1995','abc@ryerson.ca',4189959894);
insert into Passenger values('B1234569','TIM MITH','02-Jan-1995','abc@ryerson.ca',4189959894);
insert into Passenger values('C1234569','AMY SMITH','03-Jan-1985','abc@ryerson.ca',4189958394);
insert into Passenger values('D1234569','EDWARD TH','04-Feb-1965','abc@ryerson.ca',4189998394);
insert into Passenger values('E1234569','BILL LO','15-Mar-2013','gro@ryerson.ca',6473859204);

insert into Luggage values(19.8,1232434);
insert into Luggage values(22,1232436);
insert into Luggage values(20,1232437);

insert into carries values(1232434,'A1234569'); 
insert into carries values(1232436, 'B1234569');

insert into PlaneTicket values(1234,'Economy','D12');
insert into PlaneTicket values(1453,'Economy','A12');
insert into PlaneTicket values(1233, 'First Class', 'A4');
insert into PlaneTicket values(1232, 'Business', 'H5');

insert into Mealplan values('Vegan');
insert into Mealplan values('Children');
insert into Mealplan values('Chicken');
insert into Mealplan values('Pasta');

insert into addsOn values(1234,'Vegan');
insert into addsOn values(1453,'Vegan');
insert into addsOn values(1233, 'Chicken');
insert into addsOn values(1232, 'Pasta');

insert into books values(1234,'A1234569');

insert into Flight values(1506,timestamp'2016-10-05 21:35:00',timestamp'2016-10-06 10:30:00');
insert into Flight values(1234,timestamp'2016-10-05 21:35:00',timestamp'2016-10-05 23:30:00');
insert into Flight values(4321,timestamp'2016-10-06 14:35:00',timestamp'2016-10-06 18:30:00');
insert into Flight values(1324,timestamp'2016-10-05 21:35:00',timestamp'2016-10-06 11:30:00');

insert into confirms values(1506, 1234);

insert into Airplane values(747,'Boeing Commercial Airplanes',200,'747SR-81');
insert into Airplane values(777,'Airbus Groups',200,'747SR-81');


insert into fliesWith values(747,1506);

insert into Employee values(31245,'John Smith');
insert into Employee values(4321,'Tom Smith');
insert into Employee values(12345,'Jerry Smith');

insert into TicketAgent values(31245,'Booth 6');

insert into SecurityGuard values(4321, 'Gate 5');
insert into SecurityGuard values(12345, 'Gate 8');

insert into Airport values('YYZ','6301 Silver Dart Dr','Toronto Pearson International Airport');
insert into Airport values('HND', 'Hanedakuko, Ota, Tokyo 144-0041', 'Tokyo International Airport');

insert into worksAt values(31245, 'YYZ');
insert into worksAt values(4321, 'HND');
insert into worksAt values(12345, 'YYZ');

insert into destinesAt values(1506, 'YYZ');

insert into originatesFrom values(1506, 'HND');

insert into controls values(1506, 'YYZ');

