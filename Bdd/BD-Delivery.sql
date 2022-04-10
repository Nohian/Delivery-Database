drop database if exists delivery;
create database delivery;
use delivery;

create table Zona(
CodZona int,
Nombre varchar (200),
constraint pk_zona primary key (CodZona)
)engine=innodb;

create table Local(
CodL int,
Nombre varchar (30),
Direccion varchar (30),
CodZona int,
constraint pk_local primary key (CodL)
)engine=innodb;

create table Producto(
CodProd int,
Nombre varchar (120),
Precio int,
constraint pk_producto primary key (CodProd)
)engine=innodb;

create table ProductoLocal(
CodPL int,
CodProd int,
CodL int,
Stock int,
constraint pk_prodloc primary key (CodPL),
constraint fk_prodLocal_Prod foreign key (CodProd) references Producto (CodProd),
constraint fk_prodLocal_Local foreign key (CodL) references Local (CodL)
)engine=innodb;

create table Ingrediente(
CodIng int,
Nombre varchar (30),
constraint pk_ingrediente primary key (CodIng)
)engine=innodb;

create table ProductoIngrediente(
CodIng int,
CodProd int,
constraint pk_proding primary key (CodIng, CodProd),
constraint fk_PI_ing foreign key (CodIng) references Ingrediente (CodIng),
constraint fk_PI_prod foreign key (CodProd) references Producto (CodProd)
)engine=innodb;

create table Solicitud(
CodSolicitud int,
CodL int,
Fecha date,
constraint pk_solicitud primary key (CodSolicitud),
constraint fk_solicitud_Local foreign key (CodL) references Local (CodL)
)engine=innodb;

create table DetalleSolicitud(
CodPL int,
CodSolicitud int,
Cantidad int,
constraint pk_detallesolicitud_ProductLocalSolicitud primary key (CodPL,CodSolicitud),
constraint fk_detallesolicitud_ProductLocal foreign key (CodPL) references ProductoLocal (CodPL),
constraint fk_detallesolicitud_Solicitud foreign key (CodSolicitud) references Solicitud (CodSolicitud)
)engine=innodb;

create table Cliente(
CodCliente int,
Nombre varchar (30),
Apellido varchar (30),
Tel varchar (12),
DNI varchar (10),
Direccion varchar (30),
CP varchar (6),
constraint pk_cliente primary key (CodCliente)
)engine=innodb;

create table Pedido(
CodPedido int,
CodSolicitud int,
CodCliente int,
Descripcion varchar(100),
Fecha date,
Hora time,
constraint pk_Pedido primary key (CodPedido),
constraint fk_pedido_Solicitud foreign key (CodSolicitud) references Solicitud (CodSolicitud),
constraint fk_pedido_Cliente foreign key (CodCliente) references Cliente (CodCliente)
)engine=innodb;

create table Ticket(
CodTicket int auto_increment,
CodPedido int,
Fecha date,
Hora time,
CUIT varchar (14),
TipoFactura varchar(20),
TipoResponsable varchar(30),
MontoTotal int,
constraint pk_Ticket primary key (CodTicket),
constraint fk_ticket_Pedido foreign key (CodPedido) references Pedido (CodPedido)
)engine=innodb;

create table Sueldo(
CodSueldo int,
CodZona int,
Monto int,
constraint pk_Sueldo primary key (CodSueldo),
constraint fk_Sueldo_Zona foreign key (CodZona) references Zona (CodZona)
)engine=innodb;

create table TransferRecibo(
CodTR int auto_increment,
CodL int,
FechaAbono date,
FechaOrigen date,
NumSuc int,
DirecSuc varchar (100),
Ordenante varchar(80),
Cuenta varchar(30),
Concepto varchar(100),
TotalAbono int,
constraint pk_TranferRecibo primary key (CodTR),
constraint fk_TranferRecibo_Local foreign key (CodL) references Local (CodL)
)engine=innodb;

create table Descuento(
CodDesc int,
Razon varchar(200),
Valor int,
constraint pk_descuento primary key (CodDesc)
)engine=innodb;

create table Bonus(
CodBonus int,
RangoKM varchar(10),
Valor int,
constraint pk_bonus primary key (CodBonus)
)engine=innodb;

create table Repartidor(
CodRep int,
Nombre varchar (30),
Apellido varchar (30),
DNI varchar (10),
Tel varchar (12),
CodZona int,
constraint pk_rep primary key (CodRep),
constraint fk_repartidor_zona foreign key (CodZona) references Zona (CodZona)
)engine=innodb;

create table InformePedido(
NroCompIP int,
CodRep int,
CodPedido int,
Fecha date,
Hora time,
Total int,
constraint pk_nrocompip primary key (NroCompIP),
constraint fk_informepedido_rep foreign key (CodRep) references Repartidor (CodRep),
constraint fk_informepedido_pedido foreign key (CodPedido) references Pedido (CodPedido)
)engine=innodb;

create table RepartidorKM(
CodRep int,
CodPedido int,
CantKM int,
Fecha date,
constraint pk_repkm primary key (CodRep, CodPedido),
constraint fk_repkm_rep foreign key (CodRep) references Repartidor (CodRep),
constraint fk_repkm_pedido foreign key (CodPedido) references Pedido (CodPedido)
)engine=innodb;

create table Recibo(
CodR int,
CodRep int,
MontoFinal int,
Concepto varchar(100),
Fecha date,
CodSueldo int,
CodDesc int,
CodBonus int,
constraint pk_recibo primary key (CodR),
constraint fk_recibo_rep foreign key (CodRep) references Repartidor (CodRep),
constraint fk_recibo_sueldo foreign key (CodSueldo) references Sueldo (CodSueldo),
constraint fk_recibo_descuento foreign key (CodDesc) references Descuento (CodDesc),
constraint fk_recibo_bonus foreign key (CodBonus) references Bonus (CodBonus)
)engine=innodb;

create table InformeClientePedido(
NroCompICP int,
CodPedido int,
Fecha date,
Hora time,
TotalConEnvio int,
Estado boolean,
constraint pk_nrocompicp primary key (NroCompICP),
constraint fk_icp_pedido foreign key (CodPedido) references Pedido (CodPedido)
)engine=innodb;

create table Asistencia(
CodAsis int,
CodRep int,
Fecha date,
Asistio boolean,
constraint pk_asis primary key (CodAsis),
constraint fk_asistencia_rep foreign key (CodRep) references Repartidor (CodRep)
)engine=innodb;

create table InformeFallo(
NFallo int auto_increment,
CodPedido int,
CodRep int,
Fecha date,
Hora time,
Desarrollo varchar(300),
constraint pk_nfallo primary key (NFallo),
constraint fk_informefallo_rep foreign key (CodRep) references Repartidor (CodRep),
constraint fk_informefallo_pedido foreign key (CodPedido) references Pedido (CodPedido)
)engine=innodb;
