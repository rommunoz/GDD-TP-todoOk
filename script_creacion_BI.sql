USE GD2C2024
------Drop Constraints-------------------
-------------foraneas------------------
IF EXISTS (SELECT * FROM sys.foreign_keys WHERE name = 'FK_BI_Hechos_Envios_Ubicacion')
ALTER TABLE todoOk.BI_Hechos_Envios DROP CONSTRAINT FK_BI_Hechos_Envios_Ubicacion;

IF EXISTS (SELECT * FROM sys.foreign_keys WHERE name = 'FK_BI_Hechos_Envios_Tiempo')
ALTER TABLE todoOk.BI_Hechos_Envios DROP CONSTRAINT FK_BI_Hechos_Envios_Tiempo;

IF EXISTS (SELECT * FROM sys.foreign_keys WHERE name = 'FK_BI_Hechos_Envios_RangoHorario')
ALTER TABLE todoOk.BI_Hechos_Envios DROP CONSTRAINT FK_BI_Hechos_Envios_RangoHorario;

IF EXISTS (SELECT * FROM sys.foreign_keys WHERE name = 'FK_BI_Hechos_Factura_Concepto')
ALTER TABLE todoOk.BI_Hechos_Factura DROP CONSTRAINT FK_BI_Hechos_Factura_Concepto;

IF EXISTS (SELECT * FROM sys.foreign_keys WHERE name = 'FK_BI_Hechos_Factura_Ubicacion')
ALTER TABLE todoOk.BI_Hechos_Factura DROP CONSTRAINT FK_BI_Hechos_Factura_Ubicacion;

IF EXISTS (SELECT * FROM sys.foreign_keys WHERE name = 'FK_BI_Hechos_Factura_Tiempo')
ALTER TABLE todoOk.BI_Hechos_Factura DROP CONSTRAINT FK_BI_Hechos_Factura_Tiempo;

IF EXISTS (SELECT * FROM sys.foreign_keys WHERE name = 'FK_BI_Hechos_Ventas_Ubicacion')
ALTER TABLE todoOk.BI_Hechos_Ventas DROP CONSTRAINT FK_BI_Hechos_Ventas_Ubicacion;

IF EXISTS (SELECT * FROM sys.foreign_keys WHERE name = 'FK_BI_Hechos_Ventas_RangoHorario')
ALTER TABLE todoOk.BI_Hechos_Ventas DROP CONSTRAINT FK_BI_Hechos_Ventas_RangoHorario;

IF EXISTS (SELECT * FROM sys.foreign_keys WHERE name = 'FK_BI_Hechos_Ventas_Rubro')
ALTER TABLE todoOk.BI_Hechos_Ventas DROP CONSTRAINT FK_BI_Hechos_Ventas_Rubro;

IF EXISTS (SELECT * FROM sys.foreign_keys WHERE name = 'FK_BI_Hechos_Ventas_RangoEtario')
ALTER TABLE todoOk.BI_Hechos_Ventas DROP CONSTRAINT FK_BI_Hechos_Ventas_RangoEtario;

IF EXISTS (SELECT * FROM sys.foreign_keys WHERE name = 'FK_BI_Hechos_Ventas_Tiempo')
ALTER TABLE todoOk.BI_Hechos_Ventas DROP CONSTRAINT FK_BI_Hechos_Ventas_Tiempo;

IF EXISTS (SELECT * FROM sys.foreign_keys WHERE name = 'FK_BI_Hechos_Publicacion_Subrubro')
ALTER TABLE todoOk.BI_Hechos_Publicacion DROP CONSTRAINT FK_BI_Hechos_Publicacion_Subrubro;

IF EXISTS (SELECT * FROM sys.foreign_keys WHERE name = 'FK_BI_Hechos_Publicacion_Marca')
ALTER TABLE todoOk.BI_Hechos_Publicacion DROP CONSTRAINT FK_BI_Hechos_Publicacion_Marca;

IF EXISTS (SELECT * FROM sys.foreign_keys WHERE name = 'FK_BI_Hechos_Publicacion_Tiempo')
ALTER TABLE todoOk.BI_Hechos_Publicacion DROP CONSTRAINT FK_BI_Hechos_Publicacion_Tiempo;

IF EXISTS (SELECT * FROM sys.foreign_keys WHERE name = 'FK_BI_Hechos_Publicacion_Publicacion')
ALTER TABLE todoOk.BI_Hechos_Publicacion DROP CONSTRAINT FK_BI_Hechos_Publicacion_Publicacion;

IF EXISTS (SELECT * FROM sys.foreign_keys WHERE name = 'FK_BI_Hechos_Pago_TipoMedioPago')
ALTER TABLE todoOk.BI_Hechos_Pago DROP CONSTRAINT FK_BI_Hechos_Pago_TipoMedioPago;

IF EXISTS (SELECT * FROM sys.foreign_keys WHERE name = 'FK_BI_Hechos_Pago_Tiempo')
ALTER TABLE todoOk.BI_Hechos_Pago DROP CONSTRAINT FK_BI_Hechos_Pago_Tiempo;

IF EXISTS (SELECT * FROM sys.foreign_keys WHERE name = 'FK_BI_Hechos_Pago_Ubicacion')
ALTER TABLE todoOk.BI_Hechos_Pago DROP CONSTRAINT FK_BI_Hechos_Pago_Ubicacion;

-------------primarias-------------
IF EXISTS (SELECT * FROM sys.key_constraints WHERE name = 'PK_BI_Dimension_Rango_Etario')
ALTER TABLE todoOk.BI_Dimension_Rango_Etario DROP CONSTRAINT PK_BI_Dimension_Rango_Etario;

IF EXISTS (SELECT * FROM sys.key_constraints WHERE name = 'PK_BI_Dimension_Rango_Horario')
ALTER TABLE todoOk.BI_Dimension_Rango_Horario DROP CONSTRAINT PK_BI_Dimension_Rango_Horario;

IF EXISTS (SELECT * FROM sys.key_constraints WHERE name = 'PK_BI_Dimension_Ubicacion')
ALTER TABLE todoOk.BI_Dimension_Ubicacion DROP CONSTRAINT PK_BI_Dimension_Ubicacion;

IF EXISTS (SELECT * FROM sys.key_constraints WHERE name = 'PK_BI_Dimension_Tiempo')
ALTER TABLE todoOk.BI_Dimension_Tiempo DROP CONSTRAINT PK_BI_Dimension_Tiempo;

IF EXISTS (SELECT * FROM sys.key_constraints WHERE name = 'PK_BI_Dimension_Subrubro')
ALTER TABLE todoOk.BI_Dimension_Subrubro DROP CONSTRAINT PK_BI_Dimension_Subrubro;

IF EXISTS (SELECT * FROM sys.key_constraints WHERE name = 'PK_BI_Dimension_Tipo_Medio_Pago')
ALTER TABLE todoOk.BI_Dimension_Tipo_Medio_Pago DROP CONSTRAINT PK_BI_Dimension_Tipo_Medio_Pago;

IF EXISTS (SELECT * FROM sys.key_constraints WHERE name = 'PK_BI_Dimension_Marca')
ALTER TABLE todoOk.BI_Dimension_Marca DROP CONSTRAINT PK_BI_Dimension_Marca;

IF EXISTS (SELECT * FROM sys.key_constraints WHERE name = 'PK_BI_Dimension_Rubro')
ALTER TABLE todoOk.BI_Dimension_Rubro DROP CONSTRAINT PK_BI_Dimension_Rubro;

IF EXISTS (SELECT * FROM sys.key_constraints WHERE name = 'PK_BI_Dimension_Concepto')
ALTER TABLE todoOk.BI_Dimension_Concepto DROP CONSTRAINT PK_BI_Dimension_Concepto;

IF EXISTS (SELECT * FROM sys.key_constraints WHERE name = 'PK_BI_Dimension_Publicacion')
ALTER TABLE todoOk.BI_Dimension_Publicacion DROP CONSTRAINT PK_BI_Dimension_Publicacion;

IF EXISTS (SELECT * FROM sys.key_constraints WHERE name = 'PK_BI_Dimension_Tipo_Envio')
ALTER TABLE todoOk.BI_Dimension_Tipo_Envio DROP CONSTRAINT PK_BI_Dimension_Tipo_Envio;

IF EXISTS (SELECT * FROM sys.key_constraints WHERE name = 'PK_BI_Hechos_Envios')
ALTER TABLE todoOk.BI_Hechos_Envios DROP CONSTRAINT PK_BI_Hechos_Envios;

IF EXISTS (SELECT * FROM sys.key_constraints WHERE name = 'PK_BI_Hechos_Factura')
ALTER TABLE todoOk.BI_Hechos_Factura DROP CONSTRAINT PK_BI_Hechos_Factura;

IF EXISTS (SELECT * FROM sys.key_constraints WHERE name = 'PK_BI_Hechos_Ventas')
ALTER TABLE todoOk.BI_Hechos_Ventas DROP CONSTRAINT PK_BI_Hechos_Ventas;

IF EXISTS (SELECT * FROM sys.key_constraints WHERE name = 'PK_BI_Hechos_Publicacion')
ALTER TABLE todoOk.BI_Hechos_Publicacion DROP CONSTRAINT PK_BI_Hechos_Publicacion;

IF EXISTS (SELECT * FROM sys.key_constraints WHERE name = 'PK_BI_Hechos_Pago')
ALTER TABLE todoOk.BI_Hechos_Pago DROP CONSTRAINT PK_BI_Hechos_Pago;

----------------drop tablas dimensiones------------
-- Dimensiones
IF OBJECT_ID('todoOk.BI_Dimension_Rango_Etario', 'U') IS NOT NULL
    DROP TABLE todoOk.BI_Dimension_Rango_Etario;

IF OBJECT_ID('todoOk.BI_Dimension_Rango_Horario', 'U') IS NOT NULL
    DROP TABLE todoOk.BI_Dimension_Rango_Horario;

IF OBJECT_ID('todoOk.BI_Dimension_Ubicacion', 'U') IS NOT NULL
    DROP TABLE todoOk.BI_Dimension_Ubicacion;

IF OBJECT_ID('todoOk.BI_Dimension_Tiempo', 'U') IS NOT NULL
    DROP TABLE todoOk.BI_Dimension_Tiempo;

IF OBJECT_ID('todoOk.BI_Dimension_Subrubro', 'U') IS NOT NULL
    DROP TABLE todoOk.BI_Dimension_Subrubro;

IF OBJECT_ID('todoOk.BI_Dimension_Marca', 'U') IS NOT NULL
    DROP TABLE todoOk.BI_Dimension_Marca;

IF OBJECT_ID('todoOk.BI_Dimension_Rubro', 'U') IS NOT NULL
    DROP TABLE todoOk.BI_Dimension_Rubro;

IF OBJECT_ID('todoOk.BI_Dimension_Concepto', 'U') IS NOT NULL
    DROP TABLE todoOk.BI_Dimension_Concepto;

IF OBJECT_ID('todoOk.BI_Dimension_Publicacion', 'U') IS NOT NULL
    DROP TABLE todoOk.BI_Dimension_Publicacion;

IF OBJECT_ID('todoOk.BI_Dimension_Tipo_Envio', 'U') IS NOT NULL
    DROP TABLE todoOk.BI_Dimension_Tipo_Envio;

IF OBJECT_ID('todoOk.BI_Dimension_Tipo_Medio_Pago', 'U') IS NOT NULL
    DROP TABLE todoOk.BI_Dimension_Tipo_Medio_Pago;

-----------------drop tablas hechos---------------
IF OBJECT_ID('todoOk.BI_Hechos_Ventas', 'U') IS NOT NULL
    DROP TABLE todoOk.BI_Hechos_Ventas;

IF OBJECT_ID('todoOk.BI_Hechos_Pago', 'U') IS NOT NULL
    DROP TABLE todoOk.BI_Hechos_Pago;

IF OBJECT_ID('todoOk.BI_Hechos_Envios', 'U') IS NOT NULL
    DROP TABLE todoOk.BI_Hechos_Envios;

IF OBJECT_ID('todoOk.BI_Hechos_Factura', 'U') IS NOT NULL
    DROP TABLE todoOk.BI_Hechos_Factura;

IF OBJECT_ID('todoOk.BI_Hechos_Publicacion', 'U') IS NOT NULL
    DROP TABLE todoOk.BI_Hechos_Publicacion;

-----------------drop funciones -----------------------
IF OBJECT_ID('todoOk.fx_obtener_rango_etario', 'FN') IS NOT NULL
    DROP FUNCTION todoOk.fx_obtener_rango_etario;

IF OBJECT_ID('todoOk.fx_obtener_tiempo_id', 'FN') IS NOT NULL
    DROP FUNCTION todoOk.fx_obtener_tiempo_id;

IF OBJECT_ID('todoOk.fx_obtener_rango_horario', 'FN') IS NOT NULL
    DROP FUNCTION todoOk.fx_obtener_rango_horario;
--------------drop procedures------------------------------------
DROP PROCEDURE IF EXISTS todoOk.BI_Migrar_Dimension_Rango_Etario;
DROP PROCEDURE IF EXISTS todoOk.BI_Migrar_Dimension_Rango_Horario;
DROP PROCEDURE IF EXISTS todoOk.BI_Migrar_Dimension_Ubicacion;
DROP PROCEDURE IF EXISTS todoOk.BI_Migrar_Dimension_Tiempo;
DROP PROCEDURE IF EXISTS todoOk.BI_Migrar_Dimension_Tipo_Medio_Pago;
DROP PROCEDURE IF EXISTS todoOk.BI_Migrar_Dimension_Subrubro;
DROP PROCEDURE IF EXISTS todoOk.BI_Migrar_Dimension_Rubro;
DROP PROCEDURE IF EXISTS todoOk.BI_Migrar_Dimension_Marca;
DROP PROCEDURE IF EXISTS todoOk.BI_Migrar_Dimension_Concepto;
DROP PROCEDURE IF EXISTS todoOk.BI_Migrar_Dimension_Publicacion;
DROP PROCEDURE IF EXISTS todoOk.BI_Migrar_Dimension_Tipo_Envio;

DROP PROCEDURE IF EXISTS todoOk.BI_Migrar_Hecho_Envio;
DROP PROCEDURE IF EXISTS todoOk.BI_Migrar_Hechos_Factura;
DROP PROCEDURE IF EXISTS todoOk.BI_Migrar_Hechos_Ventas;
DROP PROCEDURE IF EXISTS todoOk.BI_Migrar_Hechos_Publicacion;
DROP PROCEDURE IF EXISTS todoOk.BI_Migrar_Hechos_Pago;


----------------drop views--------------------------
IF OBJECT_ID('todoOk.view_1_promedio_tiempo_publicaciones', 'V') IS NOT NULL
    DROP VIEW todoOk.view_1_promedio_tiempo_publicaciones;

IF OBJECT_ID('todoOk.view_2_promedio_stock_inicial', 'V') IS NOT NULL
    DROP VIEW todoOk.view_2_promedio_stock_inicial;

IF OBJECT_ID('todoOk.view_3_venta_promedio_mensual', 'V') IS NOT NULL
    DROP VIEW todoOk.view_3_venta_promedio_mensual;

IF OBJECT_ID('todoOk.view_4_rendimiento_de_rubros', 'V') IS NOT NULL
    DROP VIEW todoOk.view_4_rendimiento_de_rubros;

IF OBJECT_ID('todoOk.view_5_volumen_de_ventas', 'V') IS NOT NULL
    DROP VIEW todoOk.view_5_volumen_de_ventas;

IF OBJECT_ID('todoOk.view_6_pago_en_cuotas', 'V') IS NOT NULL
    DROP VIEW todoOk.view_6_pago_en_cuotas;

IF OBJECT_ID('todoOk.view_7_porcentaje_cumplimiento_envios', 'V') IS NOT NULL
    DROP VIEW todoOk.view_7_porcentaje_cumplimiento_envios;

IF OBJECT_ID('todoOk.view_8_mayores_costo_envios', 'V') IS NOT NULL
    DROP VIEW todoOk.view_8_mayores_costo_envios;

IF OBJECT_ID('todoOk.view_9_porcentaje_facturacion_concepto', 'V') IS NOT NULL
    DROP VIEW todoOk.view_9_porcentaje_facturacion_concepto;

IF OBJECT_ID('todoOk.view_10_facturacion_por_provincia', 'V') IS NOT NULL
    DROP VIEW todoOk.view_10_facturacion_por_provincia;
GO

-------------Tablas de dimensiones--------------
CREATE TABLE todoOk.BI_Dimension_Rango_Etario(
    d_rango_etario_id           INTEGER IDENTITY(1,1) NOT NULL,
    descripcion               NVARCHAR(50)
)

CREATE TABLE todoOk.BI_Dimension_Rango_Horario(
    d_rango_horario_id       INTEGER IDENTITY(1,1) NOT NULL,
    descripcion              NVARCHAR(50)
)

CREATE TABLE todoOk.BI_Dimension_Ubicacion(
    d_ubicacion_id            INTEGER IDENTITY(1,1) NOT NULL,
    provincia               NVARCHAR(50),
    localidad               NVARCHAR(50)
)

CREATE TABLE todoOk.BI_Dimension_Tiempo(
    d_tiempo_id               INTEGER IDENTITY(1,1) NOT NULL,
    anio             INTEGER,
    cuatrimestre     INTEGER,
    mes              INTEGER
)

CREATE TABLE todoOk.BI_Dimension_Subrubro(
    d_subrubro_id            INTEGER IDENTITY(1,1) NOT NULL,
    descripcion_rubro      NVARCHAR(50),
    nombre_subrubro        NVARCHAR(50)
)

CREATE TABLE todoOk.BI_Dimension_Tipo_Medio_Pago(
    d_tipo_medio_pago_id         INTEGER IDENTITY(1,1) NOT NULL,
    descripcion                  NVARCHAR(50)  NOT NULL
)

CREATE TABLE todoOk.BI_Dimension_Marca(
    d_marca_id              INTEGER IDENTITY(1,1) NOT NULL,
    marca                 NVARCHAR(55)  
)

CREATE TABLE todoOk.BI_Dimension_Rubro(
    d_rubro_id            INTEGER IDENTITY(1,1) NOT NULL,
    descripcion_rubro     NVARCHAR(50)
) 

CREATE TABLE todoOk.BI_Dimension_Concepto(
    d_concepto_id           INTEGER IDENTITY(1,1) NOT NULL,
    nombre           NVARCHAR(50)  NOT NULL
)

CREATE TABLE todoOk.BI_Dimension_Publicacion(
    d_publicacion_id       INTEGER IDENTITY(1,1) NOT NULL,
    codigo                  DECIMAL(18,0)  NOT NULL,
    descripcion             NVARCHAR(50)  NOT NULL
)

CREATE TABLE todoOk.BI_Dimension_Tipo_Envio(
    d_tipo_envio_id       INTEGER IDENTITY(1,1) NOT NULL,
    nombre                 NVARCHAR(50)  NOT NULL
)


-------Tablas de hechos--------------------
CREATE TABLE todoOk.BI_Hechos_Envios (
    h_envio_id              INTEGER IDENTITY(1,1),
    d_ubicacion_id          INTEGER,
    d_tiempo_id             INTEGER,
    d_rango_horario_id      INTEGER,
    total_envios            INTEGER,
    cant_envios_cumplidos   INTEGER,
    costo                   DECIMAL(18,2)
)

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
    cantidad_vendida       INTEGER
)


CREATE TABLE todoOk.BI_Hechos_Publicacion(
    h_publicacion_id        INTEGER IDENTITY(1,1),
    d_subrubro_id           INTEGER,
    d_marca_id              INTEGER,
    d_tiempo_id             INTEGER,
    d_publicacion_id        INTEGER,
    dias_vigencia           INTEGER,
    stock                   DECIMAL(18,0)
)

CREATE TABLE todoOk.BI_Hechos_Pago(
    h_pago_id              INTEGER IDENTITY(1,1),
    d_tipo_medio_pago_id    INTEGER,
    d_tiempo_id             INTEGER,
    d_ubicacion_id          INTEGER,
    importe_total           DECIMAL(18,2),
    cant_cuotas             DECIMAL(18,0)
)

---------CONSTRAINTS PRIMARIAS----------------------
---------Tablas dimensiones-------------
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

ALTER TABLE todoOk.BI_Dimension_Tipo_Medio_Pago
ADD CONSTRAINT PK_BI_Dimension_Tipo_Medio_Pago PRIMARY KEY (d_tipo_medio_pago_id);

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

--------Tablas de hechos-----------
ALTER TABLE todoOk.BI_Hechos_Envios
    ADD CONSTRAINT PK_BI_Hechos_Envios PRIMARY KEY (h_envio_id);

ALTER TABLE todoOk.BI_Hechos_Factura
    ADD CONSTRAINT PK_BI_Hechos_Factura PRIMARY KEY (h_factura_id);

ALTER TABLE todoOk.BI_Hechos_Ventas
    ADD CONSTRAINT PK_BI_Hechos_Ventas PRIMARY KEY (h_venta_id);

ALTER TABLE todoOk.BI_Hechos_Publicacion
    ADD CONSTRAINT PK_BI_Hechos_Publicacion PRIMARY KEY (h_publicacion_id);

ALTER TABLE todoOk.BI_Hechos_Pago
    ADD CONSTRAINT PK_BI_Hechos_Pago PRIMARY KEY (h_pago_id);
GO
------------CONSTRAINTS FORANEAS----------------
--------Tablas de hechos-----------
--Hechos_Envios
ALTER TABLE todoOk.BI_Hechos_Envios
    ADD CONSTRAINT FK_BI_Hechos_Envios_Ubicacion FOREIGN KEY (d_ubicacion_id) REFERENCES todoOk.BI_Dimension_Ubicacion(d_ubicacion_id);

ALTER TABLE todoOk.BI_Hechos_Envios
    ADD CONSTRAINT FK_BI_Hechos_Envios_Tiempo FOREIGN KEY (d_tiempo_id) REFERENCES todoOk.BI_Dimension_Tiempo(d_tiempo_id);

ALTER TABLE todoOk.BI_Hechos_Envios
    ADD CONSTRAINT FK_BI_Hechos_Envios_RangoHorario FOREIGN KEY (d_rango_horario_id) REFERENCES todoOk.BI_Dimension_Rango_Horario(d_rango_horario_id);

--BI_Hechos_Factura
ALTER TABLE todoOk.BI_Hechos_Factura
    ADD CONSTRAINT FK_BI_Hechos_Factura_Concepto FOREIGN KEY (d_concepto_id) REFERENCES todoOk.BI_Dimension_Concepto(d_concepto_id);

ALTER TABLE todoOk.BI_Hechos_Factura
    ADD CONSTRAINT FK_BI_Hechos_Factura_Ubicacion FOREIGN KEY (d_ubicacion_id) REFERENCES todoOk.BI_Dimension_Ubicacion(d_ubicacion_id);

ALTER TABLE todoOk.BI_Hechos_Factura
    ADD CONSTRAINT FK_BI_Hechos_Factura_Tiempo FOREIGN KEY (d_tiempo_id) REFERENCES todoOk.BI_Dimension_Tiempo(d_tiempo_id);

--BI_Hechos_Ventas
ALTER TABLE todoOk.BI_Hechos_Ventas
    ADD CONSTRAINT FK_BI_Hechos_Ventas_Ubicacion FOREIGN KEY (ubicacion_id) REFERENCES todoOk.BI_Dimension_Ubicacion(d_ubicacion_id);

ALTER TABLE todoOk.BI_Hechos_Ventas
    ADD CONSTRAINT FK_BI_Hechos_Ventas_RangoHorario FOREIGN KEY (rango_horario_id) REFERENCES todoOk.BI_Dimension_Rango_Horario(d_rango_horario_id);

ALTER TABLE todoOk.BI_Hechos_Ventas
    ADD CONSTRAINT FK_BI_Hechos_Ventas_Rubro FOREIGN KEY (rubro_id) REFERENCES todoOk.BI_Dimension_Rubro(d_rubro_id);

ALTER TABLE todoOk.BI_Hechos_Ventas
    ADD CONSTRAINT FK_BI_Hechos_Ventas_RangoEtario FOREIGN KEY (rango_etario_id) REFERENCES todoOk.BI_Dimension_Rango_Etario(d_rango_etario_id);

ALTER TABLE todoOk.BI_Hechos_Ventas
    ADD CONSTRAINT FK_BI_Hechos_Ventas_Tiempo FOREIGN KEY (tiempo_id) REFERENCES todoOk.BI_Dimension_Tiempo(d_tiempo_id);

--BI_Hechos_Publicacion
ALTER TABLE todoOk.BI_Hechos_Publicacion
    ADD CONSTRAINT FK_BI_Hechos_Publicacion_Subrubro FOREIGN KEY (d_subrubro_id) REFERENCES todoOk.BI_Dimension_Subrubro(d_subrubro_id);

ALTER TABLE todoOk.BI_Hechos_Publicacion
    ADD CONSTRAINT FK_BI_Hechos_Publicacion_Marca FOREIGN KEY (d_marca_id) REFERENCES todoOk.BI_Dimension_Marca(d_marca_id);

ALTER TABLE todoOk.BI_Hechos_Publicacion
    ADD CONSTRAINT FK_BI_Hechos_Publicacion_Tiempo FOREIGN KEY (d_tiempo_id) REFERENCES todoOk.BI_Dimension_Tiempo(d_tiempo_id);

ALTER TABLE todoOk.BI_Hechos_Publicacion
    ADD CONSTRAINT FK_BI_Hechos_Publicacion_Publicacion FOREIGN KEY (d_publicacion_id) REFERENCES todoOk.BI_Dimension_Publicacion(d_publicacion_id);

--BI_Hechos_Pago
ALTER TABLE todoOk.BI_Hechos_Pago
    ADD CONSTRAINT FK_BI_Hechos_Pago_TipoMedioPago FOREIGN KEY (d_tipo_medio_pago_id) REFERENCES todoOk.BI_Dimension_Tipo_Medio_Pago(d_tipo_medio_pago_id);

ALTER TABLE todoOk.BI_Hechos_Pago
    ADD CONSTRAINT FK_BI_Hechos_Pago_Tiempo FOREIGN KEY (d_tiempo_id) REFERENCES todoOk.BI_Dimension_Tiempo(d_tiempo_id);

ALTER TABLE todoOk.BI_Hechos_Pago
    ADD CONSTRAINT FK_BI_Hechos_Pago_Ubicacion FOREIGN KEY (d_ubicacion_id) REFERENCES todoOk.BI_Dimension_Ubicacion(d_ubicacion_id);
GO

-----------FUNCIONES-----------------------------
CREATE FUNCTION todoOk.fx_obtener_rango_etario (@fecha_nacimiento DATE)
    RETURNS NVARCHAR(50)
AS
BEGIN
    DECLARE @edad INT
    DECLARE @rango_etario NVARCHAR(50)

    SET @edad = DATEDIFF(YEAR, @fecha_nacimiento, GETDATE())
        - CASE WHEN MONTH(@fecha_nacimiento) > MONTH(GETDATE())
            OR (MONTH(@fecha_nacimiento) = MONTH(GETDATE()) AND DAY(@fecha_nacimiento) > DAY(GETDATE()))
                   THEN 1 ELSE 0 END
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

CREATE FUNCTION todoOk.fx_obtener_tiempo_id(@fecha DATE)
    RETURNS INTEGER
AS
BEGIN
    DECLARE @tiempo_id INTEGER
    DECLARE @anio INTEGER = YEAR(@fecha);
    DECLARE @mes INTEGER = MONTH(@fecha);
    DECLARE @cuatrimestre INTEGER = (@mes - 1) / 4 + 1;

    SELECT @tiempo_id = d_tiempo_id
    FROM todoOk.BI_Dimension_Tiempo
    WHERE anio = @anio
      AND cuatrimestre = @cuatrimestre
      AND mes = @mes;

    RETURN @tiempo_id;
END
GO


CREATE FUNCTION todoOk.fx_obtener_rango_horario (@horario DATETIME)
    RETURNS NVARCHAR(50)
AS
BEGIN
    DECLARE @hora INT = DATEPART(HOUR, @horario)
    DECLARE @rango_horario NVARCHAR(50)

    SET @rango_horario = CASE
                            WHEN @hora BETWEEN 0 AND 5 THEN '00:00 - 06:00'
                            WHEN @hora BETWEEN 6 AND 11 THEN '06:00 - 12:00'
                            WHEN @hora BETWEEN 12 AND 17 THEN '12:00 - 18:00'
                            ELSE '18:00 - 24:00'
                         END

    RETURN @rango_horario
END
GO


------------MIGRACIONES------------------------
------------TABLAS DE DIMENSIONES--------------

CREATE PROCEDURE todoOk.BI_Migrar_Dimension_Rango_Etario
AS
BEGIN
    INSERT INTO BI_Dimension_Rango_Etario(descripcion)
    VALUES ('<25'), 
           ('25-35'), 
           ('35-50'), 
           ('>50'), 
           ('FUERA_DE_RANGO');
END
GO

CREATE PROCEDURE todoOk.BI_Migrar_Dimension_Rango_Horario
AS
BEGIN
    INSERT INTO BI_Dimension_Rango_Horario(descripcion)
    VALUES ('00:00 - 06:00'),
           ('06:00 - 12:00'),
           ('12:00 - 18:00'),
           ('18:00 - 24:00');
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
    INSERT INTO BI_Dimension_Tiempo( anio, cuatrimestre, mes)
        (SELECT YEAR(fecha_hora), DATEPART(QUARTER, fecha_hora), MONTH(fecha_hora)
         FROM todoOk.venta
         GROUP BY YEAR(fecha_hora), DATEPART(QUARTER, fecha_hora), MONTH(fecha_hora)
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

CREATE PROCEDURE todoOk.BI_Migrar_Dimension_Tipo_Medio_Pago
AS
BEGIN
    INSERT INTO BI_Dimension_Tipo_Medio_Pago(descripcion)
        (SELECT medio_pago from todoOk.medio_pago)
END
GO

CREATE PROCEDURE todoOk.BI_Migrar_Dimension_Subrubro
AS
BEGIN
    INSERT INTO BI_Dimension_Subrubro (descripcion_rubro, nombre_subrubro)
        (SELECT r.descripcion, s.nombre FROM todoOk.rubro r JOIN todoOk.subrubro s ON (r.rubro_id=s.rubro_id))
END
GO
CREATE PROCEDURE todoOk.BI_Migrar_Dimension_Rubro
AS
BEGIN
    INSERT INTO BI_Dimension_Rubro (descripcion_rubro)
        (SELECT descripcion FROM todoOk.rubro)
END
GO
CREATE PROCEDURE todoOk.BI_Migrar_Dimension_Marca
AS
BEGIN
    INSERT INTO BI_Dimension_Marca (marca)
        (SELECT marca FROM todoOk.marca)
END
GO
CREATE PROCEDURE todoOk.BI_Migrar_Dimension_Concepto
AS
BEGIN
    INSERT INTO BI_Dimension_Concepto (nombre)
        (SELECT nombre FROM todoOk.concepto)
END
GO

CREATE PROCEDURE todoOk.BI_Migrar_Dimension_Publicacion
AS
BEGIN
    INSERT INTO BI_Dimension_Publicacion (codigo, descripcion)
        (SELECT DISTINCT publicacion_codigo, descripcion FROM todoOk.publicacion)
END
GO

CREATE PROCEDURE todoOk.BI_Migrar_Dimension_Tipo_Envio
AS
BEGIN
    INSERT INTO BI_Dimension_Tipo_Envio (nombre)
        (SELECT nombre FROM todoOk.tipo_envio)
END
GO

------------MIGRACIONES------------------------
------------TABLAS DE DIMENSIONES--------------

CREATE PROCEDURE todoOk.BI_Migrar_Hecho_Envio
AS
BEGIN
    INSERT INTO todoOk.BI_Hechos_Envios ( d_ubicacion_id,  d_tiempo_id,  d_rango_horario_id,  total_envios, cant_envios_cumplidos, costo) 
    SELECT
        dim_u.d_ubicacion_id,
        todoOk.fx_obtener_tiempo_id(e.fecha_programada) d_tiempo_id,
        dim_h.d_rango_horario_id,
        COUNT(e.envio_id),
        COUNT(CASE WHEN DATEDIFF(DAY, e.fecha_entrega, e.fecha_programada) <= 0 THEN 1 END),
        SUM(e.costo)
    FROM todoOk.envio e 
	INNER JOIN todoOk.domicilio d ON e.domicilio_id = d.domicilio_id
    INNER JOIN todoOk.cliente c ON d.usuario_id = c.usuario_id
    INNER JOIN todoOk.localidad l ON d.localidad_id = l.localidad_id
    INNER JOIN todoOk.provincia p ON l.provincia_id = p.provincia_id
    INNER JOIN todoOk.BI_Dimension_Ubicacion dim_u ON l.nombre = dim_u.localidad AND p.nombre = dim_u.provincia
	JOIN todoOk.BI_Dimension_Rango_Horario dim_h  ON dim_h.descripcion = todoOk.fx_obtener_rango_horario(e.hora_inicio)
    GROUP BY dim_u.d_ubicacion_id,  todoOk.fx_obtener_tiempo_id(e.fecha_programada),  dim_h.d_rango_horario_id
END
GO
----
CREATE PROCEDURE todoOk.BI_Migrar_Hechos_Factura
AS
BEGIN
    INSERT INTO todoOk.BI_Hechos_Factura (d_concepto_id, d_ubicacion_id, d_tiempo_id, total_concepto, total_factura)
    SELECT
         dc.d_concepto_id, 
         dim_u.d_ubicacion_id,
        todoOk.fx_obtener_tiempo_id(f.fecha) d_tiempo_id,
        SUM(df.subtotal),
        SUM(f.total)
    FROM todoOk.factura f
        INNER JOIN todoOk.detalle_factura df ON f.factura_numero = df.factura_numero
        INNER JOIN todoOk.concepto c ON df.concepto_id = c.concepto_id
        INNER JOIN todoOk.vendedor v ON f.usuario_id = v.usuario_id
        INNER JOIN todoOk.domicilio d ON d.usuario_id = v.usuario_id
        INNER JOIN todoOk.localidad l ON d.localidad_id = l.localidad_id
        INNER JOIN todoOk.provincia p ON l.provincia_id = p.provincia_id
        INNER JOIN todoOk.BI_Dimension_Ubicacion dim_u ON l.nombre = dim_u.localidad AND p.nombre = dim_u.provincia
		INNER JOIN todoOk.BI_Dimension_Concepto dc ON (dc.nombre = c.nombre)
    GROUP BY dc.d_concepto_id, dim_u.d_ubicacion_id, todoOk.fx_obtener_tiempo_id(f.fecha)
END
GO
----
CREATE PROCEDURE todoOk.BI_Migrar_Hechos_Ventas
AS
BEGIN
	INSERT INTO todoOk.BI_Hechos_Ventas (ubicacion_id, rango_horario_id, rubro_id, rango_etario_id, tiempo_id, total_importe, cantidad_vendida)
	SELECT 
		dim_u.d_ubicacion_id,
		dim_h.d_rango_horario_id,
		r.rubro_id,
		dim_e.d_rango_etario_id,
		todoOk.fx_obtener_tiempo_id(v.fecha_hora) AS tiempo_id,
		SUM(v.total) AS total_importe,
		COUNT(DISTINCT codigo_venta)    
	FROM todoOk.venta v
		JOIN  todoOk.usuario u ON v.usuario_id = u.usuario_id
		JOIN todoOk.cliente c ON c.usuario_id = u.usuario_id
		JOIN todoOk.BI_Dimension_Rango_Horario dim_h  ON dim_h.descripcion = todoOk.fx_obtener_rango_horario(v.fecha_hora)
		JOIN todoOk.detalle_venta dv ON v.detalle_venta_id = dv.detalle_venta_id
		JOIN todoOk.publicacion pu ON dv.publicacion_codigo = pu.publicacion_codigo
		JOIN todoOK.producto pro ON pu.producto_id = pro.producto_id
		JOIN todoOK.subrubro sub ON pro.subrubro_id = sub.subrubro_id
		JOIN todoOK.rubro r ON sub.rubro_id = r.rubro_id
		JOIN todoOk.almacen a ON pu.almacen_codigo = a.almacen_codigo
		JOIN todoOk.localidad l ON a.localidad_id = l.localidad_id
		JOIN todoOk.provincia p ON l.provincia_id = p.provincia_id
		JOIN  todoOk.BI_Dimension_Ubicacion dim_u ON dim_u.provincia = p.nombre AND dim_u.localidad = l.nombre
		JOIN todoOk.BI_Dimension_Rango_Etario dim_e  ON dim_e.descripcion = todoOk.fx_obtener_rango_etario(c.fecha_nacimiento)
	GROUP BY dim_u.d_ubicacion_id, dim_h.d_rango_horario_id, r.rubro_id, dim_e.d_rango_etario_id, todoOk.fx_obtener_tiempo_id(v.fecha_hora)
END
GO
----

CREATE PROCEDURE todoOk.BI_Migrar_Hechos_Publicacion
AS
BEGIN
    INSERT INTO todoOk.BI_Hechos_Publicacion (d_subrubro_id, d_marca_id, d_tiempo_id, d_publicacion_id,dias_vigencia, stock)
    SELECT dsb.d_subrubro_id, 
		   dm.d_marca_id, 
		   todoOk.fx_obtener_tiempo_id(fecha_inicio),
		   dp.d_publicacion_id ,
		   DATEDIFF(DAY, fecha_inicio, fecha_fin) dias_vigencia, 
		   stock
    FROM todoOk.publicacion pu 
		JOIN producto pr ON (pu.producto_id = pr.producto_id)
		JOIN todoOk.marca m ON (pr.marca_id = m.marca_id)
		JOIN todoOk.BI_Dimension_Marca dm ON (dm.marca = m.marca)
		JOIN todoOk.subrubro sb ON (pr.subrubro_id = sb.subrubro_id)
		JOIN todoOk.BI_Dimension_Subrubro dsb ON(dsb.nombre_subrubro = sb.nombre)
		JOIN todoOk.BI_Dimension_Publicacion dp ON (pu.publicacion_codigo = dp.codigo) AND (pu.descripcion = dp.descripcion)
END
GO

---

CREATE PROCEDURE todoOk.BI_Migrar_Hechos_Pago
AS
BEGIN
    INSERT INTO todoOk.BI_Hechos_Pago (d_tipo_medio_pago_id, d_tiempo_id, d_ubicacion_id, importe_total)
    SELECT dmp.d_tipo_medio_pago_id, 
		   todoOk.fx_obtener_tiempo_id(fecha), 
		   du.d_ubicacion_id, 
		   SUM(v.total)
    FROM todoOk.pago pa 
		JOIN tipo_medio_pago mp ON (pa.tipo_medio_pago_id = mp.tipo_medio_pago_id)
		JOIN todoOk.BI_Dimension_Tipo_Medio_Pago dmp ON (mp.tipo_medio_pago = dmp.descripcion)
		JOIN todoOk.venta v ON (v.codigo_venta = pa.codigo_venta)
		JOIN todoOk.cliente c ON (c.usuario_id = v.usuario_id) -- lo pide la consigna
		JOIN todoOk.domicilio d ON (c.usuario_id =d.usuario_id)
		JOIN todoOk.localidad l ON (l.localidad_id = d.localidad_id)
		JOIN todoOk.provincia pr ON (pr.provincia_id = l.provincia_id)
		JOIN todoOk.BI_Dimension_Ubicacion du ON (pr.nombre = du.provincia) AND (l.nombre = du.localidad)
		JOIN todoOk.detalle_pago dp ON (dp.detalle_pago_id = pa.detalle_pago_id)
    WHERE dp.cant_cuotas > 1
    GROUP BY dmp.d_tipo_medio_pago_id , todoOk.fx_obtener_tiempo_id(fecha) , du.d_ubicacion_id
END
GO
-------EXEC----------------
EXEC todoOk.BI_Migrar_Dimension_Rango_Etario; --5
EXEC todoOk.BI_Migrar_Dimension_Rango_Horario;--4
EXEC todoOk.BI_Migrar_Dimension_Ubicacion;--16918
EXEC todoOk.BI_Migrar_Dimension_Tiempo;--25
EXEC todoOk.BI_Migrar_Dimension_Tipo_Medio_Pago;--5
EXEC todoOk.BI_Migrar_Dimension_Subrubro;--815
EXEC todoOk.BI_Migrar_Dimension_Rubro;--22
EXEC todoOk.BI_Migrar_Dimension_Marca;--4
EXEC todoOk.BI_Migrar_Dimension_Concepto;--3
EXEC todoOk.BI_Migrar_Dimension_Publicacion;--34629
EXEC todoOk.BI_Migrar_Dimension_Tipo_Envio;--3

EXEC todoOk.BI_Migrar_Hecho_Envio;--78
EXEC todoOk.BI_Migrar_Hechos_Factura;--0
EXEC todoOk.BI_Migrar_Hechos_Ventas;--0
EXEC todoOk.BI_Migrar_Hechos_Publicacion;--700776
EXEC todoOk.BI_Migrar_Hechos_Pago;--0
GO
------VIEWS-----------------

CREATE VIEW todoOk.view_1_promedio_tiempo_publicaciones
AS
    SELECT d_subrubro_id, 
		   cuatrimestre, 
		   anio, 
		   AVG(dias_vigencia) AS promedio_tiempo
    FROM todoOk.BI_Hechos_Publicacion p 
	JOIN todoOk.BI_Dimension_Tiempo t ON (p.d_tiempo_id=t.d_tiempo_id)
    GROUP BY d_subrubro_id, cuatrimestre, anio
GO

CREATE VIEW todoOk.view_2_promedio_stock_inicial
AS
    SELECT d_marca_id, 
		   anio, 
		   AVG(stock) AS promedio_stock
    FROM todoOk.BI_Hechos_Publicacion p 
	JOIN todoOk.BI_Dimension_Tiempo t ON (p.d_tiempo_id=t.d_tiempo_id)
    GROUP BY d_marca_id, anio
GO

CREATE VIEW todoOK.view_3_venta_promedio_mensual
AS
	SELECT provincia,
		   dt.anio,
		   dt.mes,
		  CAST(SUM(v.total_importe) / SUM(v.cantidad_vendida) AS DECIMAL(12, 2)) AS promedio_mensual
	FROM todoOk.BI_Hechos_Ventas v
	JOIN todoOk.BI_Dimension_Tiempo dt ON v.tiempo_id = dt.d_tiempo_id
	JOIN todoOk.BI_Dimension_Ubicacion du ON du.d_ubicacion_id = v.ubicacion_id
	GROUP BY provincia, dt.anio, dt.mes
GO

CREATE VIEW todoOK.view_4_rendimiento_de_rubros
AS
	SELECT top 5 
		r.descripcion_rubro,
		u.localidad,
		v.rango_etario_id
	FROM todoOk.BI_Hechos_Ventas v
	JOIN todoOk.BI_Dimension_Rubro r on r.d_rubro_id = v.rubro_id
	JOIN todoOK.BI_Dimension_Ubicacion u ON u.d_ubicacion_id = v.ubicacion_id
	ORDER BY v.total_importe DESC
GO

CREATE VIEW todoOK.view_5_volumen_de_ventas
AS
	SELECT drh.descripcion,
		   dt.anio,
		   dt.mes,
		   SUM(v.cantidad_vendida) AS cantidad_ventas
	FROM todoOK.BI_Hechos_Ventas v
			 JOIN todoOk.BI_Dimension_Tiempo dt ON dt.anio = v.tiempo_id
			 JOIN todoOk.BI_Dimension_Rango_Horario drh ON drh.d_rango_horario_id = v.rango_horario_id
	GROUP BY drh.descripcion, dt.anio, dt.mes
GO

CREATE VIEW todoOk.view_6_pago_en_cuotas
AS
    SELECT TOP 3 localidad
    FROM todoOk.BI_Hechos_Pago p 
		JOIN todoOk.BI_Dimension_Ubicacion du ON (p.d_ubicacion_id=du.d_ubicacion_id)
        JOIN todoOk.BI_Dimension_Tiempo dt ON (p.d_tiempo_id=dt.d_tiempo_id)
	ORDER BY importe_total DESC
GO

CREATE VIEW todoOk.view_7_porcentaje_cumplimiento_envios
AS
    SELECT du.provincia, 
		   dt.anio, 
		   dt.mes,
		   (SUM(he.cant_envios_cumplidos) / SUM(he.total_envios)) AS porcentaje
    FROM todoOk.BI_Hechos_Envios he
    JOIN todoOk.BI_Dimension_Ubicacion du ON he.d_ubicacion_id = du.d_ubicacion_id
    JOIN todoOk.BI_Dimension_Tiempo dt ON he.d_tiempo_id = dt.d_tiempo_id
    GROUP BY du.provincia, dt.anio, dt.mes
GO

CREATE VIEW todoOk.view_8_mayores_costo_envios
AS
    SELECT TOP 5 du.localidad
    FROM todoOk.BI_Hechos_Envios he
    JOIN todoOk.BI_Dimension_Ubicacion du
        ON he.d_ubicacion_id = du.d_ubicacion_id
    GROUP BY du.localidad
    ORDER BY SUM(he.costo) DESC
GO

CREATE VIEW todoOk.view_9_porcentaje_facturacion_concepto
AS
    SELECT dt.anio, 
		   dt.mes, 
		   dc.nombre, 
		   SUM(hf.total_concepto) / SUM(hf.total_factura) AS porcentaje
    FROM todoOk.BI_Hechos_Factura hf
    JOIN todoOk.BI_Dimension_Tiempo dt ON hf.d_tiempo_id = dt.d_tiempo_id
    JOIN todoOk.BI_Dimension_Concepto dc ON hf.d_concepto_id = dc.d_concepto_id
    GROUP BY dt.anio, dt.mes, dc.nombre
GO

CREATE VIEW todoOk.view_10_facturacion_por_provincia
AS
    SELECT du.provincia, 
		   dt.cuatrimestre, 
		   dt.anio,
		   SUM(hf.total_factura) AS facturacion_por_provincia
    FROM todoOk.BI_Hechos_Factura hf
    JOIN todoOk.BI_Dimension_Ubicacion du ON hf.d_ubicacion_id = du.d_ubicacion_id
    JOIN todoOk.BI_Dimension_Tiempo dt ON hf.d_tiempo_id = dt.d_tiempo_id
    GROUP BY du.provincia, dt.cuatrimestre, dt.anio
GO