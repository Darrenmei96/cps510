insert into Person values(123456,'DARREN MEI','30-Jan-1996',4161112222,'darren.mei@ryerson.ca');
insert into Person values(223456,'SHENLEY RODWORTH','01-APRIL-1990',2890101011,'abc@ryerson.ca');
insert into Person values(323456,'BOBBY GREY','20-DEC-2000',6470038032,'abcdefg@ryerson.ca');

insert into Passport values('A1234569','CA');
insert into Passport values('B1234569','US');
insert into Passport values('C1234569','CA');

insert into holds values(123456,'A1234569');
insert into holds values(223456,'B1234569');
insert into holds values(323456,'C1234569');

insert into Luggage values(1232434,18);
insert into Luggage values(1232436,22);
insert into Luggage values(1232437,20);

insert into carries values(123456,1232434);
insert into carries values(223456,1232436);
insert into carries values(323456,1232437);

insert into PlaneTicket values(1233,'First Class','A4','Asian');
insert into PlaneTicket values(1232,'Business','H5','Steak');
insert into PlaneTicket values(1234,'Economy','D12','Vegan');

insert into books values('A1234569',1233);
insert into books values('B1234569',1232);
insert into books values('C1234569',1234);

insert into Flight values(4321,timestamp'2016-10-05 21:35:00',timestamp'2016-10-06 10:30:00');
insert into Flight values(1234,timestamp'2016-10-05 21:35:00',timestamp'2016-10-05 23:30:00');

insert into confirms values(1234,1234);
insert into confirms values(1233,1234);
insert into confirms values(1232,4321);

insert into Airport values('YYZ','6301 Silver Dart Dr','Toronto Pearson International Airport');
insert into Airport values('HND','Hanedakuko, Ota, Tokyo 144-0041','Tokyo International Airport');

insert into Airplane values('747-01','Boeing',200);
insert into Airplane values('A380-01','Airbus',200);

insert into TicketAgentEmployee values(55555,'John Smith');
insert into TicketAgentEmployee values(88888,'Akane Miyoshi');

insert into worksAt values(55555,'YYZ','Booth 6');
insert into worksAt values(88888,'HND','Booth 14');

insert into fliesWith values('747-01',1234);
insert into fliesWith values('A380-01',4321);

insert into fliesFromTo values(4321,'YYZ','HND');
insert into fliesFromTo values(1234,'HND','YYZ');

insert into controls values(4321,'YYZ');
insert into controls values(1234,'HND');

exit;
