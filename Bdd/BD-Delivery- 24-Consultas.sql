/*1)Crear una vista con los elementos necesarios para agregar un nuevo producto.*/

create or replace view NewProduct as
	select codprod,nombre,precio
		from producto;
		
insert into NewProduct values (11,"Grande McBacon",700);
+---------+----------------+--------+
| CodProd | Nombre         | Precio |
+---------+----------------+--------+
|      11 | Grande McBacon |    700 |
+---------+----------------+--------+	
/*2)Crear un procedimiento, que muestre todos los repartidores que asistieron en el mes de noviembre del año 2020.*/
  
	DROP PROCEDURE IF EXISTS RepartidoresNoviembre;
	DELIMITER //
	CREATE PROCEDURE RepartidoresNoviembre()
	BEGIN
		SELECT a.codrep,nombre,apellido,dni
			FROM repartidor rep, asistencia a
				WHERE rep.codrep = a.codrep
				and year(fecha) = "2020"
				and month(fecha) = "11"
				and asistio = 1;
	END
	//

	DELIMITER ;

+--------+--------+----------+----------+
| codrep | nombre | apellido | dni      |
+--------+--------+----------+----------+
|      1 | Ramiro | Gonzalez | 49158763 |
+--------+--------+----------+----------+

  /*3)Cuantos pedidos se repartieron el dia 22 de noviembre de 2020.*/
  
  select count(*) as "Cantidad de pedidos"
  from pedido
  where fecha = "2020/11/22";
 
+---------------------+
| Cantidad de pedidos |
+---------------------+
|                   1 |
+---------------------+
 
  /*4)Determine un procedimiento que indique cuanto se le debe descontar de su sueldo total a un empleado por llegar tarde.*/
  
  DROP PROCEDURE IF EXISTS DescontarSueldo;
	DELIMITER //
	CREATE PROCEDURE DescontarSueldo()
	BEGIN
		SELECT valor
			FROM descuento
				WHERE razon like "%tarde%";
	END
	//

	DELIMITER ;
	
+-------+
| valor |
+-------+
|   200 |
+-------+

  /*5)Cree una vista que indique los precios de los productos.*/
  
create or replace view PreciosProductos as
	select nombre,precio
		from producto;
  
+--------------------------------+--------+
| nombre                         | precio |
+--------------------------------+--------+
| Big Mac                        |    250 |
| Whopper                        |    230 |
| Baconator                      |    670 |
| Alitas de pollo                |    340 |
| pizza de palmitos              |    450 |
| pizza a la calabreza           |    800 |
| faina                          |    556 |
| sandwich de pollo              |    200 |
| sandwich de pavo a la barbacoa |    230 |
| mega-boom bacon y cheddar      |    250 |
| Grande McBacon                 |    700 |
+--------------------------------+--------+

  /*6)Muestre cuantas solicitudes se hicieron en el mes de diciembre.*/
  
  select count(*) 
  from solicitud
  where month(fecha) = "12";
  
+----------+
| count(*) |
+----------+
|        0 |
+----------+

  /*7)Muestre al empleado con el mejor sueldo*/
  select nombre,apellido,dni
  from repartidor r, recibo rec
  where r.codrep = rec.codrep
  and montofinal in (select max(montofinal)
					from recibo);
					
+---------+----------+----------+
| nombre  | apellido | dni      |
+---------+----------+----------+
| Agustin | Lagioia  | 49662531 |
+---------+----------+----------+

  /*8)Mostrar todos los locales y la zona a la que pertenece (Utilize inner join). COMPLETAR*/
  select l.nombre,z.nombre
  from zona z inner join local l
  on z.codzona = l.codzona;
  
+-------------+-------------------+
| nombre      | nombre            |
+-------------+-------------------+
| McDonalds   | Caballito         |
| Burger King | Caballito         |
| Wendys      | Liniers           |
| KFC         | Mataderos         |
| Kentuky     | Parque avellaneda |
| El Griego   | Flores            |
| El Fortin   | Almagro           |
| Mario       | Monserrat         |
| Subway      | Parque chacabuco  |
| Mostaza     | Palermo           |
+-------------+-------------------+
  /*9)Ordenar de manera alfabetica el apellido de los clientes.*/
  select apellido,nombre from cliente order by apellido;
  
+-----------+----------+
| apellido  | nombre   |
+-----------+----------+
| Cafka     | Carla    |
| Capaldi   | Amelia   |
| Diaz      | Gabriela |
| Gutierres | Fabian   |
| Lopez     | Alberto  |
| Nieves    | Maria    |
| Peralta   | Franco   |
| Tramoyana | Nicolas  |
| Veracruz  | Fabricio |
| Villafa?e | Ernesto  |
+-----------+----------+
  /*10)Se desea visualizar de mayor a menor la cantidad de kilometros realizados por los repartidores para calcular su salario.*/
  
  select nombre,apellido,cantkm
  from repartidor r,repartidorkm km
  where r.codrep = km.codrep
  order by cantkm desc;
  
+----------+-----------+--------+
| nombre   | apellido  | cantkm |
+----------+-----------+--------+
| Veronica | Gutierrez |     45 |
| Fernando | Aguilar   |     30 |
| Brandon  | Jimenez   |     14 |
| Lucila   | Figueroa  |     13 |
| Lucas    | Marconi   |     10 |
| Agustin  | Lagioia   |      9 |
| Gimena   | Fernandez |      9 |
| Ramiro   | Gonzalez  |      5 |
| Nicolas  | Ramirez   |      4 |
| Tobias   | Torres    |      3 |
+----------+-----------+--------+

  /*11)Muestre el nombre de la zona donde no se encuentren locales.*/
  select nombre as "Nombre de la zona"
  from zona 
  where codzona not in (select l.codzona
						from local l, zona z
						where l.codzona = z.codzona);
+-------------------+
| Nombre de la zona |
+-------------------+
| Floresta          |
+-------------------+
  /*12)Mostrar los ingredientes que contengan pollo.*/
  select nombre as "Ingrediente"
  from ingrediente
  where nombre like "%pollo%";
+------------------+
| Ingrediente      |
+------------------+
| Alitas de Pollo  |
| Pechuga de Pollo |
+------------------+
  /*13)Agrupar por repartidor los fallos informados en los pedidos.*/
select codrep, count(NFallo) as "contador de fallos"
from informefallo
group by codrep;

+--------+--------------------+
| codrep | contador de fallos |
+--------+--------------------+
|      1 |                  1 |
|      2 |                  1 |
|      3 |                  1 |
|      4 |                  1 |
|      5 |                  1 |
|      6 |                  1 |
|      7 |                  1 |
|      8 |                  1 |
|      9 |                  1 |
|     10 |                  1 |
+--------+--------------------+

  /*14)Mostrar el numero de pedido junto al nombre de la pizza de kentucky comprada en ese pedido.*/
set @Local = (select codl
				from local l
					where nombre = "Kentucky");
 
set @CodProd = (select codprod
					from productolocal pl
						where codl= @local);
 
select Ped.codpedido,Prod.nombre
	from (select codpedido
			from solicitud s, pedido p
				where s.codsolicitud = p.codsolicitud 
					and codl = @Local) as Ped,
		 (select nombre
			from producto
				where codprod=@CodProd) as Prod;
+-----------+-------------------+
| codpedido | nombre            |
+-----------+-------------------+
|         5 | pizza de palmitos |
+-----------+-------------------+
  /*15)Mostrar que ingredientes llevan los sandwich de pollo.*/
  select p.nombre as "Producto", i.nombre as "Ingrediente"
from producto p, ingrediente i, productoingrediente as pi
where p.codprod = pi.codprod
and i.coding = pi.coding
and p.nombre = "sandwich de pollo";

+-------------------+------------------+
| Producto          | Ingrediente      |
+-------------------+------------------+
| sandwich de pollo | Pechuga de Pollo |
+-------------------+------------------+

  /*16)Mostrar pedidos que no hayan sido pagados.*/
  select p.codpedido as "Pedidos impagos"
	from pedido p inner join informeclientepedido icp
		on p.codpedido= icp.codpedido
			and estado = 0;
			
+-----------------+
| Pedidos impagos |
+-----------------+
|               3 |
|               4 |
|               6 |
|               7 |
+-----------------+

  /*17)Se solicita mostrar aquellos clientes que tengan el mismo codigo postal ingresado y guardarlos en una tabla por medio de un cursor*/

DROP PROCEDURE IF EXISTS ClientesCP;
DELIMITER //
CREATE PROCEDURE ClientesCP (in CPostal varchar(6))
BEGIN
	DECLARE Cliente int;
	DECLARE NomCli varchar (30);
	DECLARE ApellidoCli varchar (30);
	DECLARE Telefono varchar (12);
	DECLARE DNICli varchar (10);
	DECLARE DirCli varchar (30);
	DECLARE CodPostal varchar (6);
		CREATE OR REPLACE TABLE ClientesCP (
			Cliente int,
			NomCli varchar (30),
			ApellidoCli varchar (30),
			Telefono varchar (12),
			DNICli varchar (10),
			DirCli varchar (30),
			CodPostal varchar (6),
		PRIMARY KEY (Cliente)
		);

	SELECT CodCliente,Nombre,Apellido,Tel,DNI,Direccion,CP
	INTO cliente,NomCli,ApellidoCli,Telefono,DNICli,DirCli,CodPostal
		FROM cliente 
			where cp = CPostal;

	INSERT INTO ClientesCP VALUES (Cliente,NomCli,ApellidoCli,Telefono,DNICli,DirCli,CodPostal);

	END //

DELIMITER ;

CALL ClientesCP("C1006");

+---------+---------+-------------+----------+------------+-----------------------+-----------+
| Cliente | NomCli  | ApellidoCli | Telefono | DNICli     | DirCli                | CodPostal |
+---------+---------+-------------+----------+------------+-----------------------+-----------+
|       3 | Alberto | Lopez       | 40987345 | 42.654.748 | Av. Juan.D.Peron 1235 | C1006     |
+---------+---------+-------------+----------+------------+-----------------------+-----------+

  /*18)Utilizando un cursor, agregar más repartidores.*/
  DROP PROCEDURE IF EXISTS AgregaRepartidores;
DELIMITER $$
CREATE OR REPLACE PROCEDURE AgregaRepartidores (CodRep int,Nombre varchar (30),Apellido varchar (30),DNI varchar (10),Tel varchar (12),CodZona int)
 BEGIN 
 DECLARE Rep int;
 DECLARE NomRep varchar (30);
 DECLARE ApellidoRep varchar (30);
 DECLARE DNIRep varchar (10);
 DECLARE Telefono varchar (12);
 DECLARE NroZona int;
 DECLARE fin BOOLEAN DEFAULT 0;
 DECLARE AgCursor CURSOR for
	select CodRep,Nombre,Apellido,DNI,Tel,CodZona;
DECLARE CONTINUE HANDLER FOR NOT FOUND SET FIN := 1;
OPEN AgCursor;
bucle: LOOP
	FETCH AgCursor INTO Rep,NomRep,ApellidoRep, DNIRep, Telefono,NroZona;
		IF fin THEN
			LEAVE bucle;
		END IF;
	INSERT into repartidor values (Rep,NomRep,ApellidoRep, DNIRep, Telefono,NroZona);
END LOOP BUCLE;
CLOSE AgCursor;
END $$
DELIMITER ;

CALL AgregaRepartidores(11,"Ariel", "D'Angelo","49349809","1126598737",5);

select * from repartidor where codrep = 11;

/*
+--------+--------+----------+----------+------------+---------+
| CodRep | Nombre | Apellido | DNI      | Tel        | CodZona |
+--------+--------+----------+----------+------------+---------+
|     11 | Ariel  | D'Angelo | 49349809 | 1126598737 |       5 |
+--------+--------+----------+----------+------------+---------+*/

  /*19)Escribir funcion almacenada llamada "nombre-producto" que reciba como parametro de entrada el codigo de un producto 
  y que devuelva el nombre del producto al que le pertenece ese codigo*/
  
drop function if exists nombre_producto;
delimiter //
create function nombre_producto (producto int)
    returns varchar(100)
    deterministic
    begin
        declare nombre varchar(100);
            select p.nombre into nombre
            from producto p
            where codprod = producto;
    return nombre;
    end //
delimiter ;

select nombre_producto(3) as "nombre del producto";

+---------------------+
| nombre del producto |
+---------------------+
| Baconator           |
+---------------------+
  /*20)Escribir funcion almacenada que se llame "averiguar_codbonus" que reciba como parametro de entrada una cierta cantidad de dinero y que 
  devuelva el codigo de bonus al que le pertenezca esa suma.*/
  SET @mensaje = (SELECT "No existe un codigo de bonus con el valor establecido");

drop function if exists averiguar_codbonus;
delimiter //
create function averiguar_codbonus (valorbonus int)
    returns varchar(100)
    deterministic
    begin
        declare codbon int;
            select codbonus into codbon
            from bonus
            where valor = valorbonus;
    if codbon is null then
    return @mensaje;
    end if;

    if codbon is not null then
    return codbon;
    end if;
    end //
delimiter ;

select averiguar_codbonus(550) as "Codigo del bonus";

+------------------+
| Codigo del bonus |
+------------------+
| 6                |
+------------------+

  /*21)Crear usuario llamado Gerente que se le permita insertar y revocar repartidores.*/
  
  drop user "Gerente";
CREATE USER 'Gerente' IDENTIFIED BY 'gerente';

grant insert on delivery.repartidor to gerente@localhost identified by 'gerente';
grant insert on delivery.repartidor to gerente@'%' identified by 'gerente';
grant delete on delivery.repartidor to gerente@localhost identified by 'gerente';
grant delete on delivery.repartidor to gerente@'%' identified by 'gerente';
  
  /*22)Crear un usuario que solo pueda registrar nuevos clientes y ver sus datos.*/
  
  drop user "Asistente";
CREATE USER 'Asistente' IDENTIFIED BY 'asistente';

grant insert on delivery.cliente to asistente@localhost identified by 'asistente';
grant insert on delivery.cliente to asistente@'%' identified by 'asistente';
grant select on delivery.cliente to asistente@localhost identified by 'asistente';
grant select on delivery.cliente to asistente@'%' identified by 'asistente';
  
  /*23)Realizar un trigger que cada vez que se agregue un nuevo informe de fallo, compruebe si fue escrito su correspondiente desarrollo.*/

DELIMITER //
CREATE or replace TRIGGER verificardesarrollo
after insert ON InformeFallo
FOR EACH ROW
BEGIN

if new.desarrollo = "" or new.desarrollo is null then
signal sqlstate '45000' set message_text = "Error. No fue escrito ningun desarrollo";
end if;

END //
delimiter ;

insert into informefallo values
("",1,4,"2020/09/22","21:30:03","");

  /*24)Crear un trigger que permita verificar que cada vez que se ingrese un nuevo ingrediente se especifique su nombre.*/
  
 DELIMITER //
CREATE or replace TRIGGER verificaringrediente
after insert ON ingrediente
FOR EACH ROW
BEGIN

if new.nombre = "" or new.nombre is null then
signal sqlstate '45000' set message_text = "Error. No puede ingresarse el ingrediente ya que no especifico su correspondiente nombre";
end if;

END //
delimiter ;

insert into ingrediente values
(11,null);
 