Base de datos de un servicio ficticio de delivery para cadenas de comida rapida hecha en un grupo de 4 personas 


![unnamed](https://user-images.githubusercontent.com/78242717/162630574-52a1abad-e3a4-46b6-af48-ecdb10a63746.png)
    
        Indice

Historia y Objetivo.

Relevamiento.

Circuitos:


-Texto.

-Cursogramas.

Cuaderno de Carga:


-Portada

-Relatos y Diagramas de Flujo de Datos (DFD).

-Descripción de Almacenes (Modelo Relacional).

-Diccionario de Datos.

-Diseño de Salidas.

-Supuestos.


            Historia
           
La empresa de reparto a domicilio “Fasty” fue creada en los años 80. Inicialmente como una salvación para una familia de tres hijos entre diecisiete y veinticuatro años, un padre desaparecido y una madre sin trabajo. Estos tres chicos, dispuestos a sacar adelante a la familia, compraron tres bicicletas panaderas con sus únicos ahorros y se pusieron a trabajar. Se encargaban de repartir diarios, se paraban a esperar en las puertas de los mercados por si alguien necesitaba ayuda en el transporte de sus bolsas hasta sus hogares, repartían las comidas de los restaurantes a las casas (este trabajo fue el más difícil porque la gente temía que se las robaran, pero al generar buenas impresiones en el barrio cada vez se fueron adaptando mejor).
	Al año siguiente los chicos ya recibían en sus casas pedidos de compras. Ya no solo se trataba de llevar las compras sino que también hacerlas. La gente ganaba su confianza y con ello popularidad en las calles. Algunos restaurantes empezaron a encargarles pedidos, sobre todo los que eran para las fábricas y requieren más de un viaje por la cantidad (tanto de pedidos como de empleados). 
	Al cabo de unos 5 años, alquilaron un terreno en una esquina y desde allí empezaron a “contratar” a otros jóvenes en su anterior situación. Empezaron a trabajar con más locales de comidas e incluso en Capital. Dejaron de repartir diarios y las compras de los supermercados, ya que donde más se ganaba y más pedidos se obtenían era en el delivery de comidas, en especial las rápidas.
	En cuanto pudieron se mudaron a Capital Federal porque allí llamarían mucho más la atención.Allí abrieron un comercio más grande, consiguieron quien les hiciera y mantuviese una página web por donde podrían llegar a todas las personas y locales de una forma más cómoda e incluso formal.
	La competencia crecía y ellos se iban quedando detrás, no tenían suficientes ciclomotores. En vez de competir “fuego contra fuego”, ya siendo empresarios decidieron aumentar la eficiencia y comodidad en la comunicación. Pasaron de página web + llamadas telefónicas a una aplicación para dispositivos móviles. Allí se encontraría el primer inmenso paso de Fasty a la competencia de delivery.
	A día de hoy aún se mantienen en Capital Federal, donde se ubica su sede central. Desde allí manejan a sus repartidores y “Fasty” consigue llegar a todas sus casas con su pedido en el tiempo más reducido de toda la competencia.




        Relevamientos
        
-¿Tiene la empresa una oficina o sede donde los empleados estén esperando a que se les asigne un pedido?¿O todos salen desde sus propias casas con sus propios medios de transporte?
-No, todos nuestros empleados parten desde donde se encuentren en el momento que se les asigna un pedido.

-¿Sus empleados trabajan todo el día hasta recibir un pedido o tienen un horario establecido en el que podrían o no recibir pedidos?
-Tienen un horario de trabajo en el que todos los pedidos que se encarguen en su zona deben ser tomados por el correspondiente empleado. Fuera del horario de trabajo del mismo, los pedidos serán encargados a otro empleado.

-¿Cada cuánto tiempo se otorgan los salarios?¿Son fijos? De ser así,¿varían dependiendo de la zona?
-Los salarios se entregan por semana, son fijos pero pueden aumentar por la cantidad de pedidos o distancia recorrida.

-¿Cuáles son los métodos de pago? 
-Efectivo. El dinero recibido será depositado por la empresa de Delivery en cuentas bancarias de los locales.

-¿La empresa posee un sistema de encargos o los pedidos son de entrega “inmediata”?
-No posee un sistema de encargos ya que el encargo se realizaría con el local de comida directamente.

-¿Cuál es el horario disponible para realizar pedidos?
-El horario que tienen los comercios, para los cuales hacen el delivery.

-Si llegase a presentarse un retraso, ¿Cómo se le informa al cliente que su pedido no llegará al horario notificado?
-Se le puede informar con un mensaje al teléfono celular.

-¿Qué beneficio tienen los clientes frecuentes y cuándo se consideran de ese tipo?
-El beneficio puede ser un 10% de descuento en su compra. El beneficio lo obtiene una vez que paso los 8 pedidos.

-En caso de un accidente de parte del empleado, en su recorrido para entregar el pedido, ¿Cómo procede la empresa frente a esta situación?
-Si en el accidente se perdió el pedido, o no se encuentra en óptimo estado, se hace cargo del costo de reposición la empresa de delivery.

-¿Se pueden reemplazar repartidores en caso de licencia o enfermedad?
-Sería conveniente dado que se puede perder clientela.

-¿Se cobra el envio? ¿Es un precio establecido o varía por la distancia del recorrido/método de transporte?
-Se cobra una suma fija siempre que la entrega sea dentro de la ciudad donde está establecido el local.

-¿Cómo se verifica la entrega de un pedido?
-Con la conformidad que hace el repartidor de la entrega del dinero a la empresa.

-¿Qué ocurre en caso de que se quiera cancelar el pedido?
-El pedido se podrá cancelar, siempre y cuando no haya sido despachado.

-¿Cuánto tiempo debe pasar para que el pedido ya no se pueda cancelar? ¿Se le notifica al cliente o está escrito en los términos de uso de la app?
-Las reglas las conoce el cliente con anterioridad.

-¿La empresa dispone de algún medio que permita a los clientes tener la opción de elegir un determinado repartidor? De no ser así, detalle el funcionamiento.
-No puede elegir, cada uno se desplaza únicamente en su zona.

-¿Los empleados trabajan todos los días? En caso afirmativo, ¿Cuándo es el día franco?
-Los empleados deben tener días de franco y estos son dos a la semana. Los días no son fijos, van rotando por semana.

-¿Cuántos viajes puede realizar un mismo empleado en un mismo día?
-Luego de seis horas de conducción diaria, el conductor deberá tomar un descanso semanal.

-¿Existe algún tipo de límite territorial y/o barrial para los empleados al momento de realizar entregas?
-En el caso de la ciudad de Buenos Aires, el límite representa cada comuna.
-¿Qué ocurre en caso de que un cliente quiera hacer un pedido a un lugar que se encuentre muy lejos de la zona donde se realiza el mismo?
-Se le contesta que no es posible realizar la entrega.

-¿Dónde se guardan o de qué manera se almacenan las copias de los pedidos y sus respectivos tickets?
-Están archivadas en los ficheros.

-¿Qué ocurre en el caso de que en el local de comidas no puedan abastecer el pedido realizado?
-La única razón es la falta de stock y en ese caso no se realiza. Esa verificación se hace antes de concretar el pedido.

-¿Qué ocurre en caso de que el pedido llegue deteriorado o no sea el correcto? 
-Si se comprueba que la responsabilidad es del repartidor, se deberá reponer y se le descuenta de sus haberes. En cambio, si la responsabilidad es del local, éste se deberá hacer cargo.

-¿Cómo incorporan a los empleados?
-Los empleados deberán ir a la sede donde se sitúa la empresa de Delivery donde se los entrevistará. Serán admitidos si cumplen los requisitos: ser mayor de 18 años, disponer de un teléfono con la línea habilitada, tener un medio de transporte  (bicicleta o ciclomotores). En caso de disponer de auto o moto, se debe presentar además la documentación del vehículo (licencia de conducir, seguro del automóvil, cédula verde o azul del vehículo).

-¿Cómo incorporan a los locales que formarán parte del reparto?
-El dueño del local que quiera aparecer en la página deberá llenar un formulario donde se le pedirán lo siguiente: país, ciudad, tipo de empresa, correo electrónico, entre otros datos tanto de la empresa como personales. Se verificará que los locales preparen comida rápida.Y se esperará la confirmación de los directivos.  

-¿Cuánto recibe la empresa por publicar los locales en el catálogo?
-Recibimos un 25% del ingreso total por local.


            Circuitos

1) El cliente solicita el pedido:


Comienza con la solicitud del cliente de un determinado pedido, en caso de falta de stock, se le avisa que el pedido no podrá ser realizado y se cancela. Esa verificación se hace antes de concretar el pedido. 


2) El cliente realiza el pedido: 


En caso de tener stock, el cliente revisa el precio de la comida junto con el envío, si está de acuerdo con el precio, procede a realizar su pedido, caso contrario se cancela. Si el pedido se realiza, a continuación la empresa lo registra, y luego lo emite, envía el ticket de la compra (original) al cliente y almacena la copia. El cliente lo recibe de forma online (por la página) y espera una respuesta de la empresa de delivery que le diga cuanto va a tardar.

3) Notificación al local de comidas:


Una vez realizado el pedido, la empresa se encarga de enviarle esa información al repartidor. Si el repartidor acepta el pedido, la empresa de Delivery procederá a avisarle al local de comida rápida todo lo que tendrá que hacer (quién es el repartidor, quién y qué pide, DNI, etc.).Con la información recibida el local de comida rápida confecciona el documento “Información Pedido”. Luego, cocina el pedido, lo prepara para ser transportado y lo almacena hasta que llegue el repartidor.

4) Notificación al repartidor y cliente:


La empresa de Delivery le indica al repartidor todo lo que tendrá que hacer (pedido, dirección, etc). El repartidor anota todos los datos en “Información Cliente-Pedido”, se dirige al restaurante de comidas rápidas donde compra y recoge el pedido con su correspondiente documento (“Información Pedido”), el cual servirá para indicarle al cliente el precio original de su comida por si presenta alguna duda/queja. La página web envía una alerta al cliente diciéndole que su pedido está en camino o está saliendo y llegará en un tiempo determinado.

5) Entrega del pedido:


El repartidor llega a la ubicación indicada por el cliente, éste confirma que su pedido es el correcto y que esté en buenas condiciones, de ser así procede a pagar.


6) Reposición del pedido:


Si el pedido no es el correcto o no se encuentra en buenas condiciones, entonces debe comprobarse a quién le corresponde la responsabilidad. Si se comprueba que es del repartidor se deberá reponer y se descontará de sus haberes. Si la responsabilidad es del local, éste se deberá hacer cargo.


7) Pago del pedido:

El cliente pagará una vez que el repartidor le entregue el pedido.


8) Incorporación de empleados:

Los empleados se presentan en la central de la empresa donde se les hará una entrevista. Se los admitirá si disponen de los siguientes requisitos: ser mayor de 18 años, disponer de un teléfono con la línea habilitada y GPS, experiencia laboral, tener un medio de transporte (bicicleta o ciclomotores).También, se debe presentar la documentación del vehículo.


9)Liquidación de haberes:

La liquidación será por semana y consta de un monto básico. El sueldo varía dependiendo de la zona en la que el repartidor se maneja, y sumándose además el dinero que se le entrega de propina, costo del viaje y del bonus por recorrido. A fin de cada semana la empresa de delivery emitirá el recibo de sueldo. El duplicado se lo conserva la empresa de delivery y el original, el repartidor.


10)Incorporación de locales:

Los locales que deseen aparecer en la página, deberán llenar un formulario donde se les pide sus datos personales (país, ciudad, tipo de empresa, correo electrónico) y de los productos que ofrece.

11) Rendición de cobro:

El repartidor entrega el monto total por el cobro de pedidos al finalizar el día. A continuación, la empresa de Delivery deberá depositar en cuentas bancarias de los locales el dinero recibido. Luego confecciona el Recibo de Cobro de Transferencia, conserva la segunda copia y envía a los locales el original.

12) Registrar asistencia:

Al inicio de la jornada laboral los repartidores tendrán que confirmar a la empresa que asistieron para empezar a recibir pedidos.


        Cursogramas
Cursograma 1
![5](https://user-images.githubusercontent.com/78242717/162631275-cbafd37a-9354-4114-916c-1eff0e4b0770.jpg)

Cursograma 2

![6](https://user-images.githubusercontent.com/78242717/162631276-d7080619-5422-458d-bf3b-1868fa3f1456.jpg)

Cursograma 3

![7](https://user-images.githubusercontent.com/78242717/162631278-c2b6c247-f852-49d7-80db-709e9abfd36b.jpg)

Cursograma 4

![8](https://user-images.githubusercontent.com/78242717/162631279-5d2f5f9a-7717-4c45-bb98-29cfc41c5ba5.jpg)

Cursograma 5

![9](https://user-images.githubusercontent.com/78242717/162631280-022b6aff-0a3a-403b-8ac6-a4085994eb4c.jpg)

Cursograma 6

![10](https://user-images.githubusercontent.com/78242717/162631282-b6217b7f-7e28-401b-ad63-ef769eb96629.jpg)

Cursograma 7

![11](https://user-images.githubusercontent.com/78242717/162631283-d2e25375-b140-48dd-9775-6336ea91a695.jpg)

Cursograma 8

![12](https://user-images.githubusercontent.com/78242717/162631284-0b50ac8b-cabc-4af5-9c32-8a925260d29c.png)

Cursograma 9

![1](https://user-images.githubusercontent.com/78242717/162631285-e50194f1-bd97-49ca-9da2-6ea22285ce0e.jpg)

Cursograma 10

![2](https://user-images.githubusercontent.com/78242717/162631286-1f9b971e-e3b0-4998-833f-2ee5db92d4f7.jpg)

Cursograma 11

![3](https://user-images.githubusercontent.com/78242717/162631287-b2c9b5b9-861b-4f5d-b5b7-cccb763238c3.jpg)

Cursograma 12

![4](https://user-images.githubusercontent.com/78242717/162631288-14f1a936-fc36-43df-ae43-08258a2d5cd0.jpg)

        
