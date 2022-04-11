Base de datos de un servicio ficticio de delivery para cadenas de comida rapida hecha en un grupo de 4 personas 


![unnamed](https://user-images.githubusercontent.com/78242717/162630574-52a1abad-e3a4-46b6-af48-ecdb10a63746.png)
    
        Indice

Circuitos:


-Texto.

-Cursogramas.

Cuaderno de Carga:


-Portada

-Relatos y Diagramas de Flujo de Datos (DFD).

-Descripción de Almacenes (Modelo Relacional).



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


	Portada
Objetivo: Administrar y gestionar el delivery de los pedidos de locales de comida rápida.


Contexto:

![13](https://user-images.githubusercontent.com/78242717/162631432-d813595e-4e51-49c0-95e1-84f50947ca3a.png)

       Diagramas de Flujo de Datos

Solicitud del pedido (burbuja 1):

Comienza con la solicitud del pedido del cliente de un determinado pedido. Se verifica el stock, si hay stock la empresa se encargará de registrar esa solicitud e informar que la solicitud es aceptada. Si no hay stock se le avisa que la solicitud no podrá ser realizada y se cancela. Esta verificación se hace antes de concretar el pedido.

![1](https://user-images.githubusercontent.com/78242717/162666037-53783dc8-3b9c-4d94-adf5-2babc5a49329.png)

![2](https://user-images.githubusercontent.com/78242717/162666038-a510c54c-83bf-4c5f-876e-2fe09b004468.png)



Registrar cliente y procesar el pedido (burbuja 2) : 

En caso de tener stock, el cliente verifica el precio de la comida junto con el envío, si está de acuerdo con el precio, procede a realizar su pedido, caso contrario se cancela. Si el pedido se realiza, la empresa registra al cliente en caso de no existir. Si ya está registrado, únicamente se registra al pedido. Luego se emite el ticket y es enviado al cliente. El cliente recibe un aviso y espera una respuesta de la empresa de delivery que le diga cuanto va a tardar.


![4](https://user-images.githubusercontent.com/78242717/162666132-7c6deb76-8b92-411d-83fa-3d514b5f3714.png)
![3](https://user-images.githubusercontent.com/78242717/162666137-53962e9a-41ea-4638-b0e7-b07f97dbe488.png)



Seleccionar repartidor (burbuja 3):

Una vez realizado el pedido, la empresa envia esa información a algún repartidor. Para eso, primero deberá asignar un repartidor a un determinado pedido, la información de dicho pedido será enviada al local de comida. Caso contrario, el circuito comienza nuevamente, seleccionando a otro repartidor.


![5](https://user-images.githubusercontent.com/78242717/162666190-fcb047c9-6dd5-4f16-8bd0-66a41fa95af1.png)

Notificación al local de comida (burbuja 4):

La empresa de Delivery procederá a enviarle la información del pedido al local de comida rápida con todo lo que tendrá que hacer (quién es el repartidor, quién y qué pide, DNI, etc). Con la información recibida previamente el local de comida rápida confecciona el “Informe del pedido”. Luego, cocina el pedido, lo prepara para ser transportado y lo almacena hasta que llegue el repartidor.

![6](https://user-images.githubusercontent.com/78242717/162666312-2c01fbe0-a8af-43ee-adc5-7884b74642b3.png)


Notificación al repartidor y cliente (burbuja 5):

La empresa de Delivery procederá a enviarle la información del pedido y del cliente. El repartidor asignado anota todos los datos en “Informe del Cliente-Pedido” y se dirige al restaurante de comidas rápidas, donde se verifica que el n° pedido que aparece en el documento que trae el repartidor concuerde con el que está en el documento creado por el local de comidas (“Informe Pedido”). Si coincide, compra y recoge el pedido. El documento (“Informe Pedido”) servirá para indicarle al cliente el precio original de su comida por si presenta alguna duda/queja.  Y si no coincide, el local de comidas le informará a la empresa que ese pedido ha sido rechazado.
La página web envía una alerta al cliente diciéndole que su pedido está en camino o está saliendo y llegará en un tiempo determinado



![7](https://user-images.githubusercontent.com/78242717/162666394-d15aab5c-d8f9-4cad-b99e-4679b36d2f4d.png)

![8](https://user-images.githubusercontent.com/78242717/162666444-bd374d64-f292-44aa-83e3-01f2688e4014.png)


Entrega, Pago y Reposición del pedido (burbuja 6):

El repartidor llega a la ubicación indicada por el cliente y procede a entregarle el pedido. A continuación, el cliente deberá verificar que su pedido sea el correcto y que esté en buenas condiciones, de ser así procede a pagar, entregando el monto total del pedido al repartidor. Si el pedido no es el correcto o no se encuentra en buenas condiciones, el sistema procederá a enviarle el “Informe de fallos” a la empresa, el cual le servirá para conocer en detalle la integridad del pedido

![10](https://user-images.githubusercontent.com/78242717/162666622-c21a1b6c-f4b8-476d-bf3a-652c8134e250.png)
![9](https://user-images.githubusercontent.com/78242717/162666623-e7ad32ab-aef1-4b0f-8264-e85933d1fc84.png)


Incorporación de empleados (burbuja 7):

Los empleados aptos deberán ser registrados en la empresa, informando todos sus datos. A continuación, el sistema le informará a la empresa que un nuevo empleado ha sido registrado.

![11](https://user-images.githubusercontent.com/78242717/162666738-957a0b3a-7b3f-498e-9022-6ef7be19e1eb.png)

Liquidación de haberes (burbuja 8):

La liquidación será por semana (calendario) y consta de un monto básico. A continuación, se deberá calcular el sueldo del repartidor dependiendo de su asistencia, la zona en la que se maneja, y sumándose además el dinero que se le entrega de propina, costo del viaje y del bonus por recorrido. El cálculo se hará teniendo en cuenta la cantidad de días que el repartidor hizo alguna entrega en la semana. A fin de cada semana la empresa de delivery emitirá el recibo de sueldo.


![13](https://user-images.githubusercontent.com/78242717/162666839-e14b5590-f738-4747-8367-29349dd5973f.png)
![12](https://user-images.githubusercontent.com/78242717/162666842-c413399f-8d74-41db-ab0f-160019f96684.png)

Incorporación de locales (burbuja 9):

Los locales aptos serán registrados en la empresa informando sus datos. Una vez obtenidos los datos, el sistema le enviará un aviso a la empresa indicando que un nuevo local ha sido registrado


![14](https://user-images.githubusercontent.com/78242717/162666925-14fb2a4e-47c5-429d-97dc-baa0d18c0580.png)

Rendición del cobro (burbuja 10):

Al finalizar el día (calendario) los montos totales por el cobro de los pedidos serán entregados. A continuación, la empresa de Delivery deberá depositar en cuentas bancarias de los locales el dinero recibido. Luego confecciona el documento “Recibo de Abono por Transferencia”, el cual enviará a los locales.


![15](https://user-images.githubusercontent.com/78242717/162667053-02f7e8ca-3ed6-450e-bf22-34bf8805a070.png)
![16](https://user-images.githubusercontent.com/78242717/162667056-963bda6f-e22f-4de3-bf31-9ca6c16ee43b.png)


Registrar asistencia (burbuja 11):

Al inicio de la jornada laboral los repartidores tendrán que confirmar a la empresa que asistieron para empezar a recibir pedidos


![17](https://user-images.githubusercontent.com/78242717/162667110-28aca09f-4db3-4fb5-94e1-c095287cab11.png)


			Modelo relacional
			
			


![relacional](https://user-images.githubusercontent.com/78242717/162667175-8c29a136-123c-4a70-92c7-f690c7cc0cad.png)

