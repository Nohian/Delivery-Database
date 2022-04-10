insert into Zona values 
(1,"Caballito"),
(2,"Liniers"),
(3,"Mataderos"),
(4,"Parque avellaneda"),
(5,"Floresta"),
(6,"Flores"),
(7,"Almagro"),
(8,"Monserrat"),
(9,"Parque chacabuco"),
(10,"Palermo");

insert into local values
(1,"McDonalds","Espinosa 1502",1),
(2,"Burger King","Emilio Mitre 4567",1),
(3,"Wendys","Buenos Aires 3400",2),
(4,"KFC","Av. Santa Fe 4607",3),
(5,"Kentuky","General Lopez 1345",4),
(6,"El Griego","Bacacay 2400",6),
(7,"El Fortin","Navarro 4300",7),
(8,"Mario","Guatemala 200",8),
(9,"Subway","Higgins 1003",9),
(10,"Mostaza","Calderon de la Barca 1220",10);

insert into producto values
(1,"Big Mac",250),
(2,"Whopper",230),
(3,"Baconator",670),
(4,"Alitas de pollo",340),
(5,"pizza de palmitos",450),
(6,"pizza a la calabreza",800),
(7,"faina",556),
(8,"sandwich de pollo",200),
(9,"sandwich de pavo a la barbacoa",230),
(10,"mega-boom bacon y cheddar",250);

insert into ProductoLocal values
(1,1,1,500),
(2,2,2,500),
(3,3,3,500),
(4,4,4,500),
(5,5,5,500),
(6,6,6,500),
(7,7,7,500),
(8,8,8,500),
(9,9,9,550),
(10,10,10,500);
 
insert into Ingrediente values 
(1,"Carne de Hamburguesa"),
(2,"Pan"),
(3,"Bacon"),
(4,"Alitas de Pollo"),
(5,"Palmitos"),
(6,"Chorizo colorado"),
(7,"Harina de Garbanzo"),
(8,"Pechuga de Pollo"),
(9,"Pavo"),
(10,"Cheddar");

insert into ProductoIngrediente values 
(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6),
(7,7),
(8,8),
(9,9),
(10,10);

insert into Solicitud values 
(1,1,"2020/11/21"),
(2,2,"2020/11/22"),
(3,3,"2020/11/23"),
(4,4,"2020/11/24"),
(5,5,"2020/11/25"),
(6,6,"2020/11/26"),
(7,7,"2020/11/27"),
(8,8,"2020/11/28"),
(9,9,"2020/11/29"),
(10,10,"2020/11/30");

insert into DetalleSolicitud values 
(1,1,4),
(2,2,3),
(3,3,3),
(4,4,2),
(5,5,1),
(6,6,2),
(7,5,2),
(8,8,1),
(9,9,3),
(10,10,4);

insert into Cliente values 
(1,"Fabian","Gutierres","45067834","45.456.789","Guatemala 4569","C1004"),
(2,"Fabricio","Veracruz","48590987","45.562.489","Rivadavia 3421","C1005"),
(3,"Alberto","Lopez","40987345","42.654.748","Av. Juan.D.Peron 1235","C1006"),
(4,"Franco","Peralta","45556776","45.852.468","Lope de vega 7895","C1007"),
(5,"Ernesto","Villafañe","40099086","42.546.852","Mosconi 7896","C1008"),
(6,"Gabriela","Diaz","46668909","48.985.624","Belgrano 4566","C1009"),
(7,"Carla","Cafka","49870987","45.123.682","Quilmes 4561","C1010"),
(8,"Maria","Nieves","41235463","45.985.632","Guemes 4562","C1011"),
(9,"Nicolas","Tramoyana","41113322","45.362.365","Gimenez 4623","C1012"),
(10,"Amelia","Capaldi","45664411","44.693.456","Lugano 1243","C1013");

insert into Pedido values
(1,1,1,"Sin tomate","2020/12/22","21:25"),
(2,2,2,"Sin papas","2020/09/22","19:00"),
(3,3,3,NULL,"2020/08/22","16:12"),
(4,4,4,"Entregar lo mas rapido posible","2020/11/22","13:40"),
(5,5,5,"Entregar antes de las 13","2020/11/23","12:00"),
(6,6,6,"Acordarse de las bebidas","2020/11/24","15:24"),
(7,7,7,"Sin lechuga","2020/06/25","10:00"),
(8,8,8,NULL,"2020/02/25","23:00"),
(9,9,9,NULL,"2020/01/30","20:00"),
(10,10,10,"Sin bacon","2020/11/30","17:48");

insert into Ticket values
(1,1,"2020/12/22","21:25","20454567894","A","consumidor final",240),
(2,2,"2020/09/22","19:00","22455624893","A","consumidor final",308),
(3,3,"2020/08/22","16:12","21426547485","A","consumidor final",1002),
(4,4,"2020/11/22","13:40","22458524686","A","consumidor final",1200),
(5,5,"2020/11/23","12:00","32425468527","A","consumidor final",602),
(6,6,"2020/11/24","15:24","33489856242","A","consumidor final",780),
(7,7,"2020/06/25","10:00","10451236822","B","consumidor final",480),
(8,8,"2020/02/25","23:00","12459856325","B","consumidor final",920),
(9,9,"2020/01/30","20:00","13453623654","A","consumidor final",1232),
(10,10,"2020/11/30","17:48","18446934563","A","consumidor final",150);

insert into Sueldo values 
(1,1,1000),
(2,2,1200),
(3,3,1400),
(4,4,1600),
(5,5,1800),
(6,6,2000),
(7,7,2200),
(8,8,2400),
(9,9,2600),
(10,10,2800);

insert into TransferRecibo values
("",1,"2020/12/29","2020/12/22",1,"Av.Beiro 3850","Juan Peralta","7532147896325698","Varios",6000),
("",2,"2020/09/30","2020/09/22",2,"Av.Nazca 8010","Carlos Echecopar","7854612049756315","Varios",8541),
("",3,"2020/08/30","2020/08/22",3,"Av.General Paz 9873","Mariana Migraña","4987561647531645","Varios",46512),
("",4,"2020/12/1","2020/11/22",4,"Terrada 2600","Marcela Tinelli","4568216753164752","Varios",4566),
("",5,"2020/12/2","2020/11/23",5,"Av.Avellaneda 5006","Marta Lapaso","9514567894561230","Varios",8504),
("",6,"2020/07/5","2020/06/25",6,"Av.belgrano 1715","Jessica Gonzales","8521649764135467","Varios",9852),
("",7,"2020/03/4","2020/02/25",7,"Av.Corrientes 1418","Juan Giovana","7894561235497861","Varios",10245),
("",8,"2020/04/6","2020/03/30",8,"Av.Corrientes 2528","Pedro Perigrini","7895462156478954","Varios",70129),
("",9,"2020/12/6","2020/11/30",9,"Av.Rivadavia 2479","Unberto Juez","7894561235852164","Varios",84562),
("",10,"2020/13/8","2020/11/24",10,"Pellegrini 251","Matias Domingo","7854621578954621","Varios",9245);

insert into Descuento values
(1,"Llega tarde",200),
(2,"Pedido perdido",100),
(3,"No se presentó por 3 dias",600),
(4,"Rompio el vehículo de transporte",1000),
(5,"Pedido no entregado",800),
(6,"Falta de modales hacia el cliente",900),
(7,"Conducta inapropiada",1000),
(8,"Mala higiene",1000),
(9,"Producto entregado a medias",1500),
(10,"Producto entregado pero falta su contenido",2000);

insert into Bonus values
(1,"9-19 Km",150),
(2,"20-40 Km",260),
(3,"11-24 Km",175),
(4,"25-60 Km",500),
(5,"30-45 Km",175),
(6,"23-65 Km",550),
(7,"15-29 km",180),
(8,"9-14 Km",125),
(9,"4-22 Km",250),
(10,"19-35 Km",230);

insert into Repartidor values
(1,"Ramiro", "Gonzalez","49158763","1126598736",1),
(2,"Gimena","Fernandez","49788782","1144556932",4),
(3,"Lucas","Marconi","49112256","1136692211",3),
(4,"Lucila","Figueroa","49336215","1185947523",2),
(5,"Tobias","Torres","49362615","1125678922",9),
(6,"Agustin","Lagioia","49662531","1122356481",2),
(7,"Brandon","Jimenez","49558472","1178745820",1), 
(8,"Fernando","Aguilar","94586321","1102365487",5),
(9,"Veronica","Gutierrez","49167822","1100289741",10),
(10,"Nicolas","Ramirez","49635578","1166321510",3);

insert into InformePedido values
(1,1,1,"2020/11/22","12:00:00",500), 
(2,2,2,"2019/07/03","11:30:30",1000),
(3,3,3,"2020/03/07","10:30:00",2000),
(4,4,4,"2019/12/17","15:00:00",2015),
(5,5,5,"2019/05/20","18:30:30",3050),
(6,6,6,"2020/11/22","20:20:20",2028),
(7,7,7,"2019/12/18","00:00:01",1001),
(8,8,8,"2020/02/05","23:32:23",650),
(9,9,9,"2019/01/26","23:11:11",200),
(10,10,10,"2020/04/25","15:05:55",4000);

insert into RepartidorKM values 
(1,1,5,"2020/12/22"),
(2,2,9,"2020/09/22"),
(3,3,10,"2020/08/22"),
(4,4,13,"2020/11/22"),
(5,5,3,"2020/11/23"),
(6,6,9,"2020/11/24"),
(7,7,14,"2020/06/25"),
(8,8,30,"2020/02/25"),
(9,9,45,"2020/01/30"),
(10,10,4,"2020/11/30");

insert into Recibo values
(1,1,950,"Pago de Sueldo","2020/11/22",1,1,1),
(2,2,1360,"Pago de Sueldo","2019/07/03",2,2,2),
(3,3,975,"Pago de Sueldo","2020/03/07",3,3,3),
(4,4,1100,"Pago de Sueldo","2019/12/17",4,4,4),
(5,5,1175,"Pago de Sueldo","2019/05/20",5,5,5),
(6,6,1650,"Pago de Sueldo","2020/11/22",6,6,6),
(7,7,1380,"Pago de Sueldo","2019/12/18",7,7,7),
(8,8,1525,"Pago de Sueldo","2020/02/05",8,8,8),
(9,9,1350,"Pago de Sueldo","2019/01/26",9,9,9),
(10,10,1030,"Pago de Sueldo","2020/04/25",10,10,10);

insert into InformeClientePedido values
(1,1,"2020/09/22","19:40:32",250,1),
(2,2,"2020/12/22","21:50:12",408,1),
(3,3,"2020/08/22","16:15:00",1202,0),
(4,5,"2020/11/23","12:20:12",1240,1),
(5,4,"2020/11/22","14:20:20",658,0),
(6,6,"2020/11/24","15:50:04",820,0),
(7,7,"2020/06/25","10:40:20",505,0),
(8,8,"2020/02/25","23:10:10",945,1),
(9,9,"2020/01/30","20:30:15",1259,1),
(10,10,"2020/11/30","18:22:16",207,1);

insert into Asistencia values
(1,1,"2020/11/22",1),
(2,2,"2019/07/03",0),
(3,3,"2020/03/07",1),
(4,4,"2019/12/17",0),
(5,5,"2019/05/20",1),
(6,6,"2020/11/22",0),
(7,7,"2019/12/18",1),
(8,8,"2020/02/05",0),
(9,9,"2019/01/26",1),
(10,10,"2020/04/25",1);

insert into InformeFallo values  
("",1,3,"2020/11/30","21:30:03","En mi pedido se olvidaron los aderezos."),
("",2,1,"2020/09/22","19:05:02","El pedido no fue entregado como lo pedi, me falto el aderezo"),
("",3,2,"2020/08/22","16:13:02","Dentro del balde de alitas de pollo encontré una cucaracha muerta."),
("",4,4,"2020/11/22","13:45:00","El bacon vino mal cocido"),
("",5,5,"2020/11/23","12:03:10","Al pedido le faltan las bebidas"),
("",6,8,"2020/11/24","15:26:15","Al pedido le falta una hamburguesa"),
("",7,6,"2020/06/25","10:06:12","El pedido vino frío"),
("",8,7,"2020/02/25","23:04:20","El pedido le faltaban la mitad de las cosas"),
("",9,10,"2020/01/30","20:15:04","A la faina le faltaba queso"),
("",10,9,"2020/11/30","17:50:05","La hamburguesa vino sin carne");

