insert into Person values(123456,'DARREN MEI','30-Jan-1996',4161112222);
insert into Person values(223456,'SHENLEY RODWORTH','01-APRIL-1990',2890101011);
insert into Person values(323456,'BOBBY GREY','20-DEC-2000',6470038032);

insert into ContactInfo values(4161112222,'darren.mei@ryerson.ca');
insert into ContactInfo values(2890101011,'abc@ryerson.ca');
insert into ContactInfo values(6470038032,'abcdefg@ryerson.ca');

insert into Passport values('A1234569','CA');
insert into Passport values('B1234569','US');
insert into Passport values('C1234569','CA');

insert into holds values(123456,'A1234569');
insert into holds values(223456,'B1234569');
insert into holds values(323456,'C1234569');

insert into Luggage values(1232434,19.8);
insert into Luggage values(1232436,22);
insert into Luggage values(1232437,20);

insert into carries values(1232434,'A1234569'); 
insert into carries values(1232436, 'B1234569');

insert into PlaneTicket values(1234,'Economy','D12','Vegan');
insert into PlaneTicket values(1453,'Economy','A12','Vegan');
insert into PlaneTicket values(1233, 'First Class', 'A4','Pasta');
insert into PlaneTicket values(1232, 'Business', 'H5','steak');


insert into books values(1233,'A1234569');
insert into books values(1232,'B1234569');

insert into Flight values(1506,timestamp'2016-10-05 21:35:00',timestamp'2016-10-06 10:30:00');
insert into Flight values(1234,timestamp'2016-10-05 21:35:00',timestamp'2016-10-05 23:30:00');
insert into Flight values(4321,timestamp'2016-10-06 14:35:00',timestamp'2016-10-06 18:30:00');
insert into Flight values(1324,timestamp'2016-10-05 21:35:00',timestamp'2016-10-06 11:30:00');

insert into Airplane values(747,'Boeing Commercial Airplanes',200);
insert into Airplane values(777,'Airbus Groups',200);

insert into TicketAgentEmployee values(31245,'John Smith');
insert into TicketAgentEmployee values(43216,'Tom Smith');
insert into TicketAgentEmployee values(12345,'Jerry Smith');

insert into worksAt values(31245,'YYZ','Booth 6');
insert into worksAt values(4321,'HND','Gate 5');
insert into worksAt values(4321,'YYZ', 'Gate 8');

insert into fliesWith values(777,1234);
insert into fliesWith values(747,1506);

insert into Airport values('YYZ','6301 Silver Dart Dr','Toronto Pearson International Airport');
insert into Airport values('HND', 'Hanedakuko, Ota, Tokyo 144-0041', 'Tokyo International Airport');

insert into fliesFromTo values(1506, 'YYZ','HND');
insert into fliesFromTo values(1234, 'HND','YYZ');
insert into fliesFromTo values(1506, 'HND', 'YYZ');

insert into controls values(1506, 'YYZ');
insert into controls values(1234, 'HND');

exit;
