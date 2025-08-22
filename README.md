# TP - Frba Marketplace
## Descripción general
Mediante este trabajo práctico se intenta simular parte de la implementación de un nuevo sistema. El mismo consiste en una plataforma de marketplace que permite conectar vendedores y clientes a través de publicaciones, gestionar las ventas, los pagos y los envíos que se concretan a través de la misma. La implementación de dicho sistema, requiere previamente realizar la migración de los datos que se tenían registrados hasta el momento. Para ello es necesario que se reformule el diseño de la base de datos y los procesos, de manera tal que cumplan con los nuevos requerimientos. Además, se solicita la implementación de un segundo modelo, con sus correspondientes procedimientos y vistas, que pueda ser utilizado para la obtención de indicadores de gestión, análisis de escenarios y proyección para la toma de decisiones.

## Entregas
1. Confeccion del DER. 
2. Entrega de Modelo de Datos Relacional y Migración
3. Entrega de BI

* Link a [Justificaciones de diseño y Diagramas](https://docs.google.com/document/d/1lQBEzT1bBPw2G4dwDRJFzgEEnPgsIlbQJNir-tUXBd4/edit?usp=sharing)

### Nota de colaboración
* Algunos commits fueron por separado pero la mayoría los realizaba un integrante mientras trabajábamos reunidos en el momento.
### Qué hicimos:
* E1: diseño del DER en conjunto.
* E2: Distribuimos las tablas entre los tres y cada uno agregó al script sentencias de creacion de tablas, Constraints, SP's de ABM, triggers para integridad; Es decir, todos el mismo rol con distintas entidades
* E3: Esquema de tablas de hechos con sus dimensiones, Consultas/indicadores para BI.  
Verificaciones: conteos cruzados y checks de integridad y análisis de rendimiento con herramientas de SSMS de nuestro lado, correcciones y feedback por parte de la catedra.

### Aclaraciones
Para ejecutar el script de migracion previamente hay que descargar un archivo .bak y backupear la base, que originalmente contiene una tabla maestra con 242108 registros.  
Luego, abrir el archivo en SQLSMS y ejecutarlo con un boton a la vista o `f5`. Para BI ejecutar el script que va a trabajar sobre la base nueva.
