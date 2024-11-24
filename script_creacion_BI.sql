
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
    fecha            DATE,
    anio             INTEGER,
    cuatrimestre     INTEGER,
    mes              INTEGER
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
    h_envio_id          INTEGER IDENTITY(1,1),
    d_ubicacion_id      INTEGER,
    d_tiempo_id         INTEGER,
    d_rango_etario_id   INTEGER,
    fecha_programada    DATE,
    cumplido            SMALLINT,
    costo               DECIMAL(18,2)
)
-- PK
ALTER TABLE todoOk.BI_Hechos_Envios ADD CONSTRAINT PK_BI_Hechos_Envios PRIMARY KEY (h_envio_id)
-- FK
ALTER TABLE todoOk.BI_Hechos_Envios ADD CONSTRAINT FK_BI_Dimension_Ubicacion FOREIGN KEY (d_ubicacion_id) REFERENCES BI_Dimension_Ubicacion(d_ubicacion_id)
ALTER TABLE todoOk.BI_Hechos_Envios ADD CONSTRAINT FK_BI_Dimension_Tiempo FOREIGN KEY (d_tiempo_id) REFERENCES BI_Dimension_Tiempo(d_tiempo_id)
ALTER TABLE todoOk.BI_Hechos_Envios ADD CONSTRAINT FK_BI_Dimension_Rango_Etario FOREIGN KEY (d_rango_etario_id) REFERENCES BI_Dimension_Rango_Etario(d_rango_etario_id)
----

CREATE TABLE todoOk.BI_Hechos_Factura(
    h_factura_id    INTEGER IDENTITY(1,1),
    d_concepto_id   INTEGER,
    d_ubicacion_id  INTEGER,
    d_tiempo_id     INTEGER,
    total_concepto  DECIMAL(16,2),
    total_factura   DECIMAL(16,2)
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

-----------FUNCIONES-----------------------------
CREATE FUNCTION todoOk.fx_Obtener_Rango_Etario (@fecha_nacimiento DATE)
    RETURNS NVARCHAR(50)
AS
BEGIN
    DECLARE @edad INT
    DECLARE @rango_etario NVARCHAR(50)

    SET @edad = DATEDIFF(YEAR, @fecha_nacimiento, GETDATE())
        - CASE WHEN MONTH(@fecha_nacimiento) > MONTH(GETDATE())
            OR (MONTH(@fecha_nacimiento) = MONTH(GETDATE()) AND DAY(@fecha_nacimiento) > DAY(GETDATE()))
                   THEN 1 ELSE 0 END

    -- Determinar el rango etario
    SET @rango_etario = CASE
                            WHEN @edad < 25 THEN '<25'
                            WHEN @edad BETWEEN 25 AND 35 THEN '25-35'
                            WHEN @edad BETWEEN 36 AND 50 THEN '35-50'
                            WHEN @edad > 50 THEN '>50'
                            ELSE 'FUERA_DE_RANGO'
        END

    RETURN @rango_etario
END
GO


CREATE FUNCTION todoOk.calcular_rango_horario (@HORARIO DATETIME)
    RETURNS SMALLINT
AS
BEGIN
    DECLARE @HORA INT = DATEPART(HOUR, @HORARIO)
    DECLARE @RES SMALLINT
    IF @HORA BETWEEN 8 AND 12
        SET @RES = 1
    ELSE
        IF @HORA BETWEEN 12 AND 16
            SET @RES = 2
        ELSE
            SET @RES = 3
    RETURN @RES
END
GO

--ROMAN
CREATE FUNCTION todoOk.fx_fecha_cumplida (@fecha_programada DATE, @fecha_entrega DATE)
    RETURNS SMALLINT
AS
BEGIN
    DECLARE @envioCumplido SMALLINT = 0;
    IF DATEPART(DAY, @fecha_programada, @fecha_entrega) > 0
        RETURN @envioCumplido
    SET @envioCumplido = 1
    RETURN @envioCumplido
END
GO

CREATE FUNCTION todoOk.CALCULAR_FECHA(@FECHA DATETIME)
    RETURNS SMALLINT
AS
BEGIN
    DECLARE @ANIO INT
    DECLARE @CUATRIMESTRE INT
    DECLARE @MES INT

    SELECT @ANIO = YEAR(@FECHA), @CUATRIMESTRE = DATEPART(QUARTER,@FECHA), @MES = MONTH(@FECHA)
    RETURN (select TIEMPO_ID from BI_D_TIEMPO
            where
                @ANIO = TIEMPO_ANIO AND
                @CUATRIMESTRE = TIEMPO_CUATRIMESTRE AND
                @MES = TIEMPO_MES
    )
END
GO


------------MIGRACIONES------------------------
------------TABLAS DE DIMENSIONES----------

CREATE PROCEDURE todoOk.BI_Migrar_Dimension_Rango_Etario
AS
BEGIN
    INSERT INTO BI_Dimension_Rango_Etario(descripcion)
    VALUES ('<25')
    INSERT INTO BI_Dimension_Rango_Etario(descripcion)
    VALUES ('25-35')
    INSERT INTO BI_Dimension_Rango_Etario(descripcion)
    VALUES ('35-50')
    INSERT INTO BI_Dimension_Rango_Etario(descripcion)
    VALUES ('>50')
--     INSERT INTO BI_Dimension_Rango_Etario(descripcion)
--     VALUES ('FUERA_DE_RANGO')
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

CREATE PROCEDURE todoOk.BI_Migrar_Dimension_Ubicacion
AS
BEGIN
    INSERT INTO BI_Dimension_Ubicacion(provincia, localidad)
        (SELECT l.nombre, p.nombre
         FROM todoOk.localidad l JOIN todoOk.provincia p ON (p.provincia_id = l.provincia_id))
END
GO

CREATE PROCEDURE todoOk.BI_Migrar_Dimension_Tiempo
AS
BEGIN
    -- noinspection SqlShouldBeInGroupBy
    INSERT INTO BI_Dimension_Tiempo( fecha, anio, cuatrimestre, mes)
        (SELECT YEAR(fecha), DATEPART(QUARTER, fecha), MONTH(fecha)
         FROM todoOk.venta
         GROUP BY YEAR(fecha), DATEPART(QUARTER, venta_fecha), MONTH(fecha)
         UNION
         SELECT YEAR(fecha_entrega), DATEPART(QUARTER, fecha_entrega), MONTH(fecha_entrega)
         FROM todoOk.envio
         GROUP BY YEAR(fecha_entrega), DATEPART(QUARTER, fecha_entrega), MONTH(fecha_entrega)
         UNION
         SELECT YEAR(fecha_programada), DATEPART(QUARTER, fecha_programada), MONTH(fecha_programada)
         FROM todoOk.envio
         GROUP BY YEAR(fecha_programada), DATEPART(QUARTER, fecha_programada), MONTH(fecha_programada)
         UNION
         SELECT YEAR(fecha_inicio), DATEPART(QUARTER, fecha_inicio), MONTH(fecha_inicio)
         FROM todoOk.publicacion
         GROUP BY YEAR(fecha_inicio), DATEPART(QUARTER, fecha_inicio), MONTH(fecha_inicio)
         UNION
         SELECT YEAR(fecha_fin), DATEPART(QUARTER, fecha_fin), MONTH(fecha_fin)
         FROM todoOk.publicacion
         GROUP BY YEAR(fecha_fin), DATEPART(QUARTER, fecha_fin), MONTH(fecha_fin)
         UNION
         SELECT YEAR(fecha), DATEPART(QUARTER, fecha), MONTH(fecha)
         FROM todoOk.pago
         GROUP BY YEAR(fecha), DATEPART(QUARTER, fecha), MONTH(fecha)
         UNION
         SELECT YEAR(fecha), DATEPART(QUARTER, fecha), MONTH(fecha)
         FROM todoOk.factura
         GROUP BY YEAR(fecha), DATEPART(QUARTER, fecha), MONTH(fecha))
END
GO

CREATE PROCEDURE todoOk.BI_Migrar_Dimension_Medio_Pago
AS
BEGIN
    INSERT INTO BI_Dimension_Medio_Pago(descripcion)
        (SELECT medio_pago from todoOk.medio_pago)
END
GO

CREATE PROCEDURE todoOk.BI_Migrar_Dimension_Rubro
AS
BEGIN
    INSERT INTO BI_Dimension_Rubro (descripcion)
        (SELECT descripcion FROM todoOk.rubro)
END

CREATE PROCEDURE todoOk.BI_Migrar_Dimension_Marca
AS
BEGIN
    INSERT INTO BI_Dimension_Marca (marca)
        (SELECT marca FROM todoOk.marca)
END

CREATE PROCEDURE todoOk.BI_Migrar_Dimension_Concepto
AS
BEGIN
    INSERT INTO BI_Dimension_Concepto (nombre)
        (SELECT nombre FROM todoOk.concepto)
END

------HACER----------------
CREATE PROCEDURE todoOk.BI_Migrar_Dimension_Publicacion
AS
BEGIN
    INSERT INTO BI_Dimension_Publicacion ()
        (SELECT  FROM todoOk.publicacion)
END

CREATE PROCEDURE todoOk.BI_Migrar_Dimension_Tipo_Envio
AS
BEGIN
    INSERT INTO BI_Dimension_Tipo_Envio ()
        (SELECT FROM todoOk.tipo_envio)
END

