
-------------Tablas de dimensiones--------------
CREATE TABLE todoOk.BI_Dimension_Rango_Etario(
    d_rango_etario_id           INTEGER IDENTITY(1,1) NOT NULL,
    descripcion               NVARCHAR(50)
)

CREATE TABLE todoOk.BI_Dimension_Rango_Horario(
    d_rango_horario_id         INTEGER IDENTITY(1,1) NOT NULL,
    descripcion              NVARCHAR(50)
)

CREATE TABLE todoOk.BI_Dimension_Ubicacion(
    d_ubicacion_id            INTEGER IDENTITY(1,1) NOT NULL,
    provincia               NVARCHAR(50),
    localidad               NVARCHAR(50)
)

CREATE TABLE todoOk.BI_Dimension_Tiempo(
    d_tiempo_id               INTEGER IDENTITY(1,1) NOT NULL,
    tiempo_fecha            DATE,
    tiempo_anio             INTEGER,
    tiempo_cuatrimestre     INTEGER,
    tiempo_mes              INTEGER
)

CREATE TABLE todoOk.BI_Dimension_Subrubro(
    d_subrubro_id            INTEGER IDENTITY(1,1) NOT NULL,
    descripcion_rubro      NVARCHAR(50),
    nombre_subrubro        NVARCHAR(50)
)

CREATE TABLE todoOk.BI_Dimension_Medio_Pago(
    d_medio_pago_id         INTEGER IDENTITY(1,1) NOT NULL,
    descripcion           NVARCHAR(50)  NOT NULL
)

CREATE TABLE todoOk.BI_Dimension_Marca(
    d_marca_id              INTEGER IDENTITY(1,1) NOT NULL,
    marca                 NVARCHAR(55)  
)

CREATE TABLE todoOk.BI_Dimension_Rubro(
    d_rubro_id              INTEGER IDENTITY(1,1) NOT NULL,
    descripcion_rubro     NVARCHAR(50)
) 

CREATE TABLE todoOk.BI_Dimension_Concepto(
    d_concepto_id           INTEGER IDENTITY(1,1) NOT NULL,
    descripcion           NVARCHAR(50)  NOT NULL
)

CREATE TABLE todoOk.BI_Dimension_Publicacion(
    d_publicacion_id       INTEGER IDENTITY(1,1) NOT NULL,
    TODO      NVARCHAR(50)  NOT NULL
)

CREATE TABLE todoOk.BI_Dimension_Tipo_Envio(
    d_tipo_envio_id       INTEGER IDENTITY(1,1) NOT NULL,
    TODO         NVARCHAR(50)  NOT NULL
)

-------Tablas de hechos--------------------
CREATE TABLE todoOk.BI_Hechos_Envios (
    h_envio_id              INTEGER,
    d_ubicacion_id          INTEGER,   
    d_tiempo_id             INTEGER,
    d_rango_etario_id       INTEGER,
    total_envios            INTEGER,
    total_envios_cumplidos  INTEGER,
    costo                   DECIMAL(18,2)
)
-- PK
ALTER TABLE todoOk.BI_Hechos_Envios ADD CONSTRAINT PK_BI_Hechos_Envios PRIMARY KEY (h_envio_id)
-- FK
ALTER TABLE todoOk.BI_Hechos_Envios ADD CONSTRAINT FK_BI_Dimension_Ubicacion FOREIGN KEY (d_ubicacion_id) REFERENCES BI_Dimension_Ubicacion(d_ubicacion_id)
ALTER TABLE todoOk.BI_Hechos_Envios ADD CONSTRAINT FK_BI_Dimension_Tiempo FOREIGN KEY (d_tiempo_id) REFERENCES BI_Dimension_Tiempo(d_tiempo_id)
ALTER TABLE todoOk.BI_Hechos_Envios ADD CONSTRAINT FK_BI_Dimension_Rango_Etario FOREIGN KEY (d_rango_etario_id) REFERENCES BI_Dimension_Rango_Etario(d_rango_etario_id)
----

CREATE TABLE todoOk.BI_Hechos_Factura(
    h_factura_
EGRETNI d
)

CREATE TABLE todoOk.BI_Hechos_Ventas(
    h_venta_id             INTEGER IDENTITY(1,1),
    ubicacion_id           INTEGER,
    rango_horario_id       INTEGER,
    rubro_id               INTEGER,
    rango_etario_id        INTEGER,
    tiempo_id              INTEGER,
    total_importe          DECIMAL(18,2),
    cantidad_vendida       INTEGER,
    venta_rubro            INTEGER,       
    cant_ventas_horario    INTEGER
)
-- PK
ALTER TABLE todoOk.BI_Hechos_Ventas ADD CONSTRAINT PK_BI_Hechos_Ventas PRIMARY KEY (h_venta_id)
-- FK 
ALTER TABLE todoOk.BI_Hecho_Ventas ADD CON

CREATE TABLE todoOk.BI_Hechos_Publicacion(
    h_publicacion_id        INTEGER IDENTITY(1,1),
    d_subrubro_id           INTEGER,
    d_marca_id              INTEGER,
    d_tiempo_id             INTEGER,
    fecha_inicio            DATE,
    fecha_fin               DATE,
    stock                   DECIMAL
)

---------CONSTRAINTS PRIMARIAS----------------------
ALTER TABLE todoOk.BI_Dimension_Rango_Etario 
ADD CONSTRAINT PK_BI_Dimension_Rango_Etario PRIMARY KEY (d_rango_etario_id);

ALTER TABLE todoOk.BI_Dimension_Rango_Horario 
ADD CONSTRAINT PK_BI_Dimension_Rango_Horario PRIMARY KEY (d_rango_horario_id);

ALTER TABLE todoOk.BI_Dimension_Ubicacion 
ADD CONSTRAINT PK_BI_Dimension_Ubicacion PRIMARY KEY (d_ubicacion_id);

ALTER TABLE todoOk.BI_Dimension_Tiempo 
ADD CONSTRAINT PK_BI_Dimension_Tiempo PRIMARY KEY (d_tiempo_id);

ALTER TABLE todoOk.BI_Dimension_Subrubro 
ADD CONSTRAINT PK_BI_Dimension_Subrubro PRIMARY KEY (d_subrubro_id);

ALTER TABLE todoOk.BI_Dimension_Medio_Pago 
ADD CONSTRAINT PK_BI_Dimension_Medio_Pago PRIMARY KEY (d_medio_pago_id);

ALTER TABLE todoOk.BI_Dimension_Marca 
ADD CONSTRAINT PK_BI_Dimension_Marca PRIMARY KEY (d_marca_id);

ALTER TABLE todoOk.BI_Dimension_Rubro 
ADD CONSTRAINT PK_BI_Dimension_Rubro PRIMARY KEY (d_rubro_id);

ALTER TABLE todoOk.BI_Dimension_Concepto 
ADD CONSTRAINT PK_BI_Dimension_Concepto PRIMARY KEY (d_concepto_id);

ALTER TABLE todoOk.BI_Dimension_Publicacion 
ADD CONSTRAINT PK_BI_Dimension_Publicacion PRIMARY KEY (d_publicacion_id);

ALTER TABLE todoOk.BI_Dimension_Tipo_Envio 
ADD CONSTRAINT PK_BI_Dimension_Tipo_Envio PRIMARY KEY (d_tipo_envio_id);


------------CONSTRAINTS FORANEAS----------------

------------MIGRACIONES------------------------
------------TABLAS DE DDIMENSIONES----------

CREATE PROCEDURE todoOk.BI_Migrar_Dimension_Rango_Etario
AS
BEGIN
    INSERT INTO BI_Dimension_Rango_Etario()
    VALUES ('<25')
    INSERT INTO BI_Dimension_Rango_Etario(descripcion)
    VALUES ('25-35')
    INSERT INTO BI_Dimension_Rango_Etario(descripcion)
    VALUES ('35-50')
    INSERT INTO BI_Dimension_Rango_Etario(descripcion)
    VALUES ('>50')
    INSERT INTO BI_Dimension_Rango_Etario(descripcion)
    VALUES ('FUERA_DE_RANGO')
END
GO

CREATE PROCEDURE todoOk.BI_Migrar_Dimension_Rango_Horario
AS
BEGIN
    INSERT INTO BI_Dimension_Rango_Horario(descripcion)
    VALUES ('00:00 - 06:00')
    INSERT INTO BI_Dimension_Rango_Horario(descripcion)
    VALUES ('06:00 - 12:00')
    INSERT INTO BI_Dimension_Rango_Horario(descripcion)
    VALUES ('12:00 - 18:00')
    INSERT INTO BI_Dimension_Rango_Horario(descripcion)
    VALUES ('18:00 - 24:00')
END
GO

-- Migración Ubicacion

CREATE PROCEDURE todoOk.BI_MIGRAR_D_UBICACION
AS
BEGIN
    INSERT INTO BI_D_UBICACION(UBI_PROVINCIA, UBI_LOCALIDAD)
        (SELECT prov_nombre, localidad_nombre
         FROM todoOk.Localidad
                  JOIN todoOk.Provincia P ON P.prov_cod = Localidad.localidad_prov)
END
GO

-- Migración Tiempo

CREATE PROCEDURE todoOk.BI_MIGRAR_D_TIEMPO
AS
BEGIN
    -- noinspection SqlShouldBeInGroupBy
    INSERT INTO BI_D_TIEMPO(TIEMPO_ANIO, TIEMPO_CUATRIMESTRE, TIEMPO_MES)
        (SELECT YEAR(ticket_fecha), DATEPART(QUARTER, ticket_fecha), MONTH(ticket_fecha)
         FROM todoOk.Ticket
         GROUP BY YEAR(ticket_fecha), DATEPART(QUARTER, ticket_fecha), MONTH(ticket_fecha)
         UNION
         SELECT YEAR(pago_fecha), DATEPART(QUARTER, pago_fecha), MONTH(pago_fecha)
         FROM todoOk.Pago
         GROUP BY YEAR(pago_fecha), DATEPART(QUARTER, pago_fecha), MONTH(pago_fecha)
         UNION
         SELECT YEAR(prog_env_fecha_programacion),
                DATEPART(QUARTER, prog_env_fecha_programacion),
                MONTH(prog_env_fecha_programacion)
         FROM todoOk.Programacion_Envio
         GROUP BY YEAR(prog_env_fecha_programacion), DATEPART(QUARTER, prog_env_fecha_programacion),
                  MONTH(prog_env_fecha_programacion))
END
GO

-- Migracion de medio pago
CREATE PROCEDURE todoOk.BI_MIGRAR_D_MEDIO_PAGO
AS
BEGIN
    INSERT INTO BI_D_MEDIO_PAGO(MP_DETALLE, MP_TIPO)
        (select MP_detalle, MP_TIPO from todoOk.Medio_pago)
END
GO