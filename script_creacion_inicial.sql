USE GD2C2024
-- ELIMINAR CONSTRAINTS FORANEAS----


IF EXISTS (SELECT * FROM sys.foreign_keys WHERE name = 'FK_localidad_provincia')
    ALTER TABLE todoOk.localidad DROP CONSTRAINT FK_localidad_provincia;

IF EXISTS (SELECT * FROM sys.foreign_keys WHERE name = 'FK_cliente_usuario')
    ALTER TABLE todoOk.cliente DROP CONSTRAINT FK_cliente_usuario;

IF EXISTS (SELECT * FROM sys.foreign_keys WHERE name = 'FK_vendedor_usuario')
    ALTER TABLE todoOk.vendedor DROP CONSTRAINT FK_vendedor_usuario;

IF EXISTS (SELECT * FROM sys.foreign_keys WHERE name = 'FK_domicilio_usuario')
    ALTER TABLE todoOk.domicilio DROP CONSTRAINT FK_domicilio_usuario;

IF EXISTS (SELECT * FROM sys.foreign_keys WHERE name = 'FK_domicilio_localidad')
    ALTER TABLE todoOk.domicilio DROP CONSTRAINT FK_domicilio_localidad;

IF EXISTS (SELECT * FROM sys.foreign_keys WHERE name = 'FK_subrubro_rubro')
    ALTER TABLE todoOk.subrubro DROP CONSTRAINT FK_subrubro_rubro;

IF EXISTS (SELECT * FROM sys.foreign_keys WHERE name = 'FK_producto_marca')
    ALTER TABLE todoOk.producto DROP CONSTRAINT FK_producto_marca;

IF EXISTS (SELECT * FROM sys.foreign_keys WHERE name = 'FK_producto_modelo')
    ALTER TABLE todoOk.producto DROP CONSTRAINT FK_producto_modelo;

IF EXISTS (SELECT * FROM sys.foreign_keys WHERE name = 'FK_factura_usuario')
    ALTER TABLE todoOk.factura DROP CONSTRAINT FK_factura_usuario;

IF EXISTS (SELECT * FROM sys.foreign_keys WHERE name = 'FK_publicacion_producto')
    ALTER TABLE todoOk.publicacion DROP CONSTRAINT FK_publicacion_producto;

IF EXISTS (SELECT * FROM sys.foreign_keys WHERE name = 'FK_publicacion_usuario')
    ALTER TABLE todoOk.publicacion DROP CONSTRAINT FK_publicacion_usuario;

IF EXISTS (SELECT * FROM sys.foreign_keys WHERE name = 'FK_publicacion_almacen')
    ALTER TABLE todoOk.publicacion DROP CONSTRAINT FK_publicacion_almacen;

IF EXISTS (SELECT * FROM sys.foreign_keys WHERE name = 'FK_detalle_factura_publicacion')
    ALTER TABLE todoOk.detalle_factura DROP CONSTRAINT FK_detalle_factura_publicacion;

IF EXISTS (SELECT * FROM sys.foreign_keys WHERE name = 'FK_detalle_factura_factura')
    ALTER TABLE todoOk.detalle_factura DROP CONSTRAINT FK_detalle_factura_factura;

IF EXISTS (SELECT * FROM sys.foreign_keys WHERE name = 'FK_detalle_factura_concepto')
    ALTER TABLE todoOk.detalle_factura DROP CONSTRAINT FK_detalle_factura_concepto;

IF EXISTS (SELECT * FROM sys.foreign_keys WHERE name = 'FK_detalle_venta_publicacion')
    ALTER TABLE todoOk.detalle_venta DROP CONSTRAINT FK_detalle_venta_publicacion;

IF EXISTS (SELECT * FROM sys.foreign_keys WHERE name = 'FK_venta_usuario')
    ALTER TABLE todoOk.venta DROP CONSTRAINT FK_venta_usuario;

IF EXISTS (SELECT * FROM sys.foreign_keys WHERE name = 'FK_venta_detalle_venta')
    ALTER TABLE todoOk.venta DROP CONSTRAINT FK_venta_detalle_venta;

IF EXISTS (SELECT * FROM sys.foreign_keys WHERE name = 'FK_pago_venta')
    ALTER TABLE todoOk.pago DROP CONSTRAINT FK_pago_venta;

IF EXISTS (SELECT * FROM sys.foreign_keys WHERE name = 'FK_pago_detalle_pago')
    ALTER TABLE todoOk.pago DROP CONSTRAINT FK_pago_detalle_pago;

IF EXISTS (SELECT * FROM sys.foreign_keys WHERE name = 'FK_pago_medio_pago')
    ALTER TABLE todoOk.pago DROP CONSTRAINT FK_pago_medio_pago;

IF EXISTS (SELECT * FROM sys.foreign_keys WHERE name = 'FK_pago_tipo_medio_pago')
    ALTER TABLE todoOk.pago DROP CONSTRAINT FK_pago_tipo_medio_pago;

IF EXISTS (SELECT * FROM sys.foreign_keys WHERE name = 'FK_envio_venta')
    ALTER TABLE todoOk.envio DROP CONSTRAINT FK_envio_venta;

IF EXISTS (SELECT * FROM sys.foreign_keys WHERE name = 'FK_envio_domicilio')
    ALTER TABLE todoOk.envio DROP CONSTRAINT FK_envio_domicilio;

IF EXISTS (SELECT * FROM sys.foreign_keys WHERE name = 'FK_envio_tipo_envio')
    ALTER TABLE todoOk.envio DROP CONSTRAINT FK_envio_tipo_envio;
GO
--ELIMINAR CONSTRAINTS PRIMARIAS --
IF EXISTS (SELECT * FROM sys.indexes WHERE name = 'PK_provincia')
    ALTER TABLE todoOk.provincia DROP CONSTRAINT PK_provincia;

IF EXISTS (SELECT * FROM sys.indexes WHERE name = 'PK_localidad')
    ALTER TABLE todoOk.localidad DROP CONSTRAINT PK_localidad;

IF EXISTS (SELECT * FROM sys.indexes WHERE name = 'PK_usuario')
    ALTER TABLE todoOk.usuario DROP CONSTRAINT PK_usuario;

IF EXISTS (SELECT * FROM sys.indexes WHERE name = 'PK_cliente')
    ALTER TABLE todoOk.cliente DROP CONSTRAINT PK_cliente;

IF EXISTS (SELECT * FROM sys.indexes WHERE name = 'PK_vendedor')
    ALTER TABLE todoOk.vendedor DROP CONSTRAINT PK_vendedor;

IF EXISTS (SELECT * FROM sys.indexes WHERE name = 'PK_domicilio')
    ALTER TABLE todoOk.domicilio DROP CONSTRAINT PK_domicilio;

IF EXISTS (SELECT * FROM sys.indexes WHERE name = 'PK_marca')
    ALTER TABLE todoOk.marca DROP CONSTRAINT PK_marca;

IF EXISTS (SELECT * FROM sys.indexes WHERE name = 'PK_modelo')
    ALTER TABLE todoOk.modelo DROP CONSTRAINT PK_modelo;

IF EXISTS (SELECT * FROM sys.indexes WHERE name = 'PK_rubro')
    ALTER TABLE todoOk.rubro DROP CONSTRAINT PK_rubro;

IF EXISTS (SELECT * FROM sys.indexes WHERE name = 'PK_subrubro')
    ALTER TABLE todoOk.subrubro DROP CONSTRAINT PK_subrubro;

IF EXISTS (SELECT * FROM sys.indexes WHERE name = 'PK_producto')
    ALTER TABLE todoOk.producto DROP CONSTRAINT PK_producto;

IF EXISTS (SELECT * FROM sys.indexes WHERE name = 'PK_almacen')
    ALTER TABLE todoOk.almacen DROP CONSTRAINT PK_almacen;

IF EXISTS (SELECT * FROM sys.indexes WHERE name = 'PK_factura')
    ALTER TABLE todoOk.factura DROP CONSTRAINT PK_factura;

IF EXISTS (SELECT * FROM sys.indexes WHERE name = 'PK_concepto')
    ALTER TABLE todoOk.concepto DROP CONSTRAINT PK_concepto;

IF EXISTS (SELECT * FROM sys.indexes WHERE name = 'PK_publicacion')
    ALTER TABLE todoOk.publicacion DROP CONSTRAINT PK_publicacion;

IF EXISTS (SELECT * FROM sys.indexes WHERE name = 'PK_detalle_factura')
    ALTER TABLE todoOk.detalle_factura DROP CONSTRAINT PK_detalle_factura;

IF EXISTS (SELECT * FROM sys.indexes WHERE name = 'PK_detalle_venta')
    ALTER TABLE todoOk.detalle_venta DROP CONSTRAINT PK_detalle_venta;

IF EXISTS (SELECT * FROM sys.indexes WHERE name = 'PK_venta')
    ALTER TABLE todoOk.venta DROP CONSTRAINT PK_venta;

IF EXISTS (SELECT * FROM sys.indexes WHERE name = 'PK_medio_pago')
    ALTER TABLE todoOk.medio_pago DROP CONSTRAINT PK_medio_pago;

IF EXISTS (SELECT * FROM sys.indexes WHERE name = 'PK_tipo_medio_pago')
    ALTER TABLE todoOk.tipo_medio_pago DROP CONSTRAINT PK_tipo_medio_pago;

IF EXISTS (SELECT * FROM sys.indexes WHERE name = 'PK_detalle_pago')
    ALTER TABLE todoOk.detalle_pago DROP CONSTRAINT PK_detalle_pago;

IF EXISTS (SELECT * FROM sys.indexes WHERE name = 'PK_pago')
    ALTER TABLE todoOk.pago DROP CONSTRAINT PK_pago;

IF EXISTS (SELECT * FROM sys.indexes WHERE name = 'PK_tipo_envio')
    ALTER TABLE todoOk.tipo_envio DROP CONSTRAINT PK_tipo_envio;

IF EXISTS (SELECT * FROM sys.indexes WHERE name = 'PK_envio')
    ALTER TABLE todoOk.envio DROP CONSTRAINT PK_envio;
GO


-- ELIMINAR TABLAS --
IF OBJECT_ID('todoOk.detalle_factura', 'U') IS NOT NULL DROP TABLE todoOk.detalle_factura;
IF OBJECT_ID('todoOk.factura', 'U') IS NOT NULL DROP TABLE todoOk.factura;
IF OBJECT_ID('todoOk.envio', 'U') IS NOT NULL DROP TABLE todoOk.envio;
IF OBJECT_ID('todoOk.pago', 'U') IS NOT NULL DROP TABLE todoOk.pago;
IF OBJECT_ID('todoOk.detalle_venta', 'U') IS NOT NULL DROP TABLE todoOk.detalle_venta;
IF OBJECT_ID('todoOk.venta', 'U') IS NOT NULL DROP TABLE todoOk.venta;
IF OBJECT_ID('todoOk.publicacion', 'U') IS NOT NULL DROP TABLE todoOk.publicacion;
IF OBJECT_ID('todoOk.producto', 'U') IS NOT NULL DROP TABLE todoOk.producto;
IF OBJECT_ID('todoOk.subrubro', 'U') IS NOT NULL DROP TABLE todoOk.subrubro;
IF OBJECT_ID('todoOk.rubro', 'U') IS NOT NULL DROP TABLE todoOk.rubro;
IF OBJECT_ID('todoOk.marca', 'U') IS NOT NULL DROP TABLE todoOk.marca;
IF OBJECT_ID('todoOk.modelo', 'U') IS NOT NULL DROP TABLE todoOk.modelo;
IF OBJECT_ID('todoOk.concepto', 'U') IS NOT NULL DROP TABLE todoOk.concepto;
IF OBJECT_ID('todoOk.medio_pago', 'U') IS NOT NULL DROP TABLE todoOk.medio_pago;
IF OBJECT_ID('todoOk.tipo_medio_pago', 'U') IS NOT NULL DROP TABLE todoOk.tipo_medio_pago;
IF OBJECT_ID('todoOk.detalle_pago', 'U') IS NOT NULL DROP TABLE todoOk.detalle_pago;
IF OBJECT_ID('todoOk.tipo_envio', 'U') IS NOT NULL DROP TABLE todoOk.tipo_envio;
IF OBJECT_ID('todoOk.almacen', 'U') IS NOT NULL DROP TABLE todoOk.almacen;
IF OBJECT_ID('todoOk.domicilio', 'U') IS NOT NULL DROP TABLE todoOk.domicilio;
IF OBJECT_ID('todoOk.cliente', 'U') IS NOT NULL DROP TABLE todoOk.cliente;
IF OBJECT_ID('todoOk.vendedor', 'U') IS NOT NULL DROP TABLE todoOk.vendedor;
IF OBJECT_ID('todoOk.usuario', 'U') IS NOT NULL DROP TABLE todoOk.usuario;
IF OBJECT_ID('todoOk.localidad', 'U') IS NOT NULL DROP TABLE todoOk.localidad;
IF OBJECT_ID('todoOk.provincia', 'U') IS NOT NULL DROP TABLE todoOk.provincia;

-- ELIMINAR PROCEDURES ---
IF OBJECT_ID('todoOk.InsertIntoProvincia', 'P') IS NOT NULL DROP PROCEDURE todoOk.InsertIntoProvincia;
IF OBJECT_ID('todoOk.InsertIntoLocalidad', 'P') IS NOT NULL DROP PROCEDURE todoOk.InsertIntoLocalidad;
IF OBJECT_ID('todoOk.InsertIntoUsuario', 'P') IS NOT NULL DROP PROCEDURE todoOk.InsertIntoUsuario;
IF OBJECT_ID('todoOk.InsertIntoCliente', 'P') IS NOT NULL DROP PROCEDURE todoOk.InsertIntoCliente;
IF OBJECT_ID('todoOk.InsertIntoVendedor', 'P') IS NOT NULL DROP PROCEDURE todoOk.InsertIntoVendedor;
IF OBJECT_ID('todoOk.InsertIntoDomicilio', 'P') IS NOT NULL DROP PROCEDURE todoOk.InsertIntoDomicilio;
IF OBJECT_ID('todoOk.InsertIntoMarca', 'P') IS NOT NULL DROP PROCEDURE todoOk.InsertIntoMarca;
IF OBJECT_ID('todoOk.InsertIntoModelo', 'P') IS NOT NULL DROP PROCEDURE todoOk.InsertIntoModelo;
IF OBJECT_ID('todoOk.InsertIntoRubro', 'P') IS NOT NULL DROP PROCEDURE todoOk.InsertIntoRubro;
IF OBJECT_ID('todoOk.InsertIntoSubRubro', 'P') IS NOT NULL DROP PROCEDURE todoOk.InsertIntoSubRubro;
IF OBJECT_ID('todoOk.InsertIntoProducto', 'P') IS NOT NULL DROP PROCEDURE todoOk.InsertIntoProducto;
IF OBJECT_ID('todoOk.InsertIntoAlmacen', 'P') IS NOT NULL DROP PROCEDURE todoOk.InsertIntoAlmacen;
IF OBJECT_ID('todoOk.InsertIntoPublicacion', 'P') IS NOT NULL DROP PROCEDURE todoOk.InsertIntoPublicacion;
IF OBJECT_ID('todoOk.InsertIntoFactura', 'P') IS NOT NULL DROP PROCEDURE todoOk.InsertIntoFactura;
IF OBJECT_ID('todoOk.InsertIntoConcepto', 'P') IS NOT NULL DROP PROCEDURE todoOk.InsertIntoConcepto;
IF OBJECT_ID('todoOk.InsertIntoDetalleFactura', 'P') IS NOT NULL DROP PROCEDURE todoOk.InsertIntoDetalleFactura;
IF OBJECT_ID('todoOk.InsertIntoDetalleVenta', 'P') IS NOT NULL DROP PROCEDURE todoOk.InsertIntoDetalleVenta;
IF OBJECT_ID('todoOk.InsertIntoVenta', 'P') IS NOT NULL DROP PROCEDURE todoOk.InsertIntoVenta;
IF OBJECT_ID('todoOk.InsertIntoMedioPago', 'P') IS NOT NULL DROP PROCEDURE todoOk.InsertIntoMedioPago;
IF OBJECT_ID('todoOk.InsertIntoTipoMedioPago', 'P') IS NOT NULL DROP PROCEDURE todoOk.InsertIntoTipoMedioPago;
IF OBJECT_ID('todoOk.InsertIntoDetallePago', 'P') IS NOT NULL DROP PROCEDURE todoOk.InsertIntoDetallePago;
IF OBJECT_ID('todoOk.InsertIntoPago', 'P') IS NOT NULL DROP PROCEDURE todoOk.InsertIntoPago;
IF OBJECT_ID('todoOk.InsertIntoTipoEnvio', 'P') IS NOT NULL DROP PROCEDURE todoOk.InsertIntoTipoEnvio;
IF OBJECT_ID('todoOk.InsertIntoEnvio', 'P') IS NOT NULL DROP PROCEDURE todoOk.InsertIntoEnvio;
GO

IF EXISTS (SELECT * FROM sys.schemas WHERE name = 'todoOk')
    DROP SCHEMA todoOk;
GO
-------------------------------------------------------------
/*						ESQUEMA								*/
CREATE SCHEMA todoOk
GO
--------------------------------------------------------------
/*					   TABLAS							    */

CREATE TABLE todoOk.provincia (
    provincia_id INT IDENTITY(1,1) NOT NULL,
    nombre NVARCHAR(50) COLLATE Modern_Spanish_CI_AS NOT NULL
)

CREATE TABLE todoOk.localidad (
    localidad_id INT IDENTITY(1,1) NOT NULL,
    nombre NVARCHAR(50) COLLATE Modern_Spanish_CI_AS NOT NULL,
    provincia_id INT NOT NULL
)

CREATE TABLE todoOk.usuario (
    usuario_id INT IDENTITY(1,1) NOT NULL,
    nombre NVARCHAR(50) COLLATE Modern_Spanish_CI_AS NOT NULL,
    pass NVARCHAR(50) COLLATE Modern_Spanish_CI_AS NOT NULL,
    fecha_creacion DATE NOT NULL
)

CREATE TABLE todoOk.cliente (
    cliente_id INT IDENTITY(1,1) NOT NULL,
    usuario_id INT NOT NULL,
    nombre NVARCHAR(50) COLLATE Modern_Spanish_CI_AS NOT NULL,
    apellido NVARCHAR(50) COLLATE Modern_Spanish_CI_AS NOT NULL,
    fecha_nacimiento DATE NOT NULL,
    mail NVARCHAR(50) COLLATE Modern_Spanish_CI_AS NOT NULL,
    dni DECIMAL(18, 0) NOT NULL
)

CREATE TABLE todoOk.vendedor (
    vendedor_id INT IDENTITY(1,1),
    usuario_id INT,
    razon_social NVARCHAR(50) COLLATE Modern_Spanish_CI_AS NOT NULL,
    cuit NVARCHAR(50) COLLATE Modern_Spanish_CI_AS NOT NULL,
    mail NVARCHAR(50) COLLATE Modern_Spanish_CI_AS NOT NULL
)

CREATE TABLE todoOk.domicilio (
    domicilio_id INT IDENTITY(1,1) NOT NULL,
    calle NVARCHAR(50) COLLATE Modern_Spanish_CI_AS NOT NULL,
    nro_calle DECIMAL(18, 0) NOT NULL,
    piso DECIMAL(18, 0) NOT NULL,
    depto NVARCHAR(50) COLLATE Modern_Spanish_CI_AS NOT NULL,
    cp NVARCHAR(50) COLLATE Modern_Spanish_CI_AS NOT NULL,
    localidad_id INT NOT NULL,
    usuario_id INT NOT NULL
)

CREATE TABLE todoOk.marca(
    marca_id INT IDENTITY(1,1) NOT NULL,
    marca NVARCHAR(50) COLLATE Modern_Spanish_CI_AS NOT NULL
)

CREATE TABLE todoOk.modelo(
    modelo_id INT IDENTITY(1,1) NOT NULL,
	modelo_codigo DECIMAL(18, 0) NOT NULL,
    descripcion NVARCHAR(50) COLLATE Modern_Spanish_CI_AS NOT NULL
)

CREATE TABLE todoOk.rubro(
    rubro_id INT IDENTITY(1,1) NOT NULL,
    descripcion NVARCHAR(50) COLLATE Modern_Spanish_CI_AS NOT NULL
)

CREATE TABLE todoOk.subrubro(
    subrubro_id INT IDENTITY(1,1) NOT NULL,
    nombre NVARCHAR(50) COLLATE Modern_Spanish_CI_AS NOT NULL,
    rubro_id INT NOT NULL
)

CREATE TABLE todoOk.producto (
    producto_id INT IDENTITY(1,1) NOT NULL,
    producto_codigo NVARCHAR(50) COLLATE Modern_Spanish_CI_AS NOT NULL,
    descripcion NVARCHAR(50) COLLATE Modern_Spanish_CI_AS NOT NULL,
    subrubro_id DECIMAL(18,0) NOT NULL,
    marca_id INT NOT NULL,
    modelo_id INT NOT NULL,
    precio DECIMAL(18,2) NOT NULL
)

CREATE TABLE todoOk.almacen (
    almacen_codigo DECIMAL(18,0) NOT NULL,
    nro_calle DECIMAL(18,0) NOT NULL,
    calle NVARCHAR(50) COLLATE Modern_Spanish_CI_AS NOT NULL,
    localidad_id INT NOT NULL,
    costo_dia_al DECIMAL(18,2) NOT NULL
)

CREATE TABLE todoOk.factura (
    factura_numero DECIMAL(18,0) NOT NULL,
    fecha DATE NOT NULL,
    usuario_id INT NOT NULL,
    total DECIMAL(18,2) NOT NULL
)

CREATE TABLE todoOk.concepto (
    concepto_id INT IDENTITY(1,1) NOT NULL,         
    nombre NVARCHAR(50) COLLATE Modern_Spanish_CI_AS NOT NULL 
)

CREATE TABLE todoOk.publicacion (
    publicacion_codigo DECIMAL(18,0) NOT NULL,         
    descripcion NVARCHAR(50) COLLATE Modern_Spanish_CI_AS NOT NULL,
    fecha_inicio DATE NOT NULL, 
    fecha_fin DATE NOT NULL, 
    producto_id INT NOT NULL, 
    stock DECIMAL(18,0) NOT NULL, 
    precio DECIMAL(18,2) NOT NULL, 
    usuario_id INT NOT NULL, 
    almacen_codigo DECIMAL(18,0) NOT NULL,  
    costo DECIMAL(18,2) NOT NULL, 
    porcentaje DECIMAL(18,2) NOT NULL
)

CREATE TABLE todoOk.detalle_factura (
    publicacion_codigo DECIMAL(18,0) NOT NULL,	       
    factura_numero DECIMAL(18,0) NOT NULL,		
    concepto_id INT NOT NULL,			
    precio DECIMAL(18,2) NOT NULL,
    cantidad DECIMAL(18,0) NOT NULL,
    subtotal DECIMAL(18,2) NOT NULL
)

CREATE TABLE todoOk.detalle_venta (
    detalle_venta_id INT IDENTITY(1,1) NOT NULL,
    publicacion_codigo DECIMAL(18, 0) NOT NULL,
    precio DECIMAL(18, 2) NOT NULL,
    cantidad_vendida DECIMAL(18, 0) NOT NULL,
    sub_total DECIMAL(18, 2) NOT NULL
)

CREATE TABLE todoOk.venta (
    codigo_venta DECIMAL(18, 0) NOT NULL,
    usuario_id INT NOT NULL,
    fecha_hora DATETIME NOT NULL,
    total DECIMAL(18, 2) NOT NULL,
    detalle_venta_id INT
)

CREATE TABLE todoOk.medio_pago(
    medio_pago_id INT IDENTITY(1,1) NOT NULL,
    medio_pago NVARCHAR(50) COLLATE Modern_Spanish_CI_AS NOT NULL
)

CREATE TABLE todoOk.tipo_medio_pago(
    tipo_medio_pago_id INT IDENTITY(1,1) NOT NULL,
    tipo_medio_pago NVARCHAR(50) COLLATE Modern_Spanish_CI_AS NOT NULL
)

CREATE TABLE todoOk.detalle_pago(
    detalle_pago_id INT IDENTITY(1,1) NOT NULL,
    nro_tarjeta NVARCHAR(50) COLLATE Modern_Spanish_CI_AS NOT NULL,
    fecha_venc_tarjeta DATE NOT NULL,
    cant_cuotas DECIMAL(18,2) NOT NULL
)

CREATE TABLE todoOk.pago(
    pago_id INT IDENTITY(1,1) NOT NULL,
    codigo_venta DECIMAL(18,0) NOT NULL,
    detalle_pago_id INT,
    importe DECIMAL(18,2) NOT NULL,
    medio_pago_id INT NOT NULL,
    tipo_medio_pago_id INT NOT NULL,
    fecha DATE NOT NULL
)
CREATE TABLE todoOk.tipo_envio (
    tipo_envio_id INT IDENTITY(1,1) NOT NULL,
    nombre NVARCHAR(50) COLLATE Modern_Spanish_CI_AS NOT NULL
)

CREATE TABLE todoOk.envio (
    envio_id INT IDENTITY(1,1) NOT NULL,
    codigo_venta DECIMAL(18, 0) NOT NULL,
    domicilio_id INT NOT NULL,
    fecha_programada DATE,
    hora_inicio DECIMAL(18, 0) NOT NULL,
    hora_fin DECIMAL(18, 0) NOT NULL,
    costo DECIMAL(18, 2) NOT NULL,
    fecha_entrega DATE NOT NULL,
    tipo_envio_id INT NOT NULL
)

-- CONSTRAINTS PRIMARIAS---
ALTER TABLE todoOk.provincia ADD CONSTRAINT PK_provincia PRIMARY KEY (provincia_id);
ALTER TABLE todoOk.localidad ADD CONSTRAINT PK_localidad PRIMARY KEY (localidad_id);
ALTER TABLE todoOk.usuario ADD CONSTRAINT PK_usuario PRIMARY KEY (usuario_id);
ALTER TABLE todoOk.cliente ADD CONSTRAINT PK_cliente PRIMARY KEY (cliente_id);
ALTER TABLE todoOk.vendedor ADD CONSTRAINT PK_vendedor PRIMARY KEY (vendedor_id);
ALTER TABLE todoOk.domicilio ADD CONSTRAINT PK_domicilio PRIMARY KEY (domicilio_id);
ALTER TABLE todoOk.marca ADD CONSTRAINT PK_marca PRIMARY KEY (marca_id);
ALTER TABLE todoOk.modelo ADD CONSTRAINT PK_modelo PRIMARY KEY (modelo_id);
ALTER TABLE todoOk.rubro ADD CONSTRAINT PK_rubro PRIMARY KEY (rubro_id);
ALTER TABLE todoOk.subrubro ADD CONSTRAINT PK_subrubro PRIMARY KEY (subrubro_id);
ALTER TABLE todoOk.producto ADD CONSTRAINT PK_producto PRIMARY KEY (producto_id);
ALTER TABLE todoOk.almacen ADD CONSTRAINT PK_almacen PRIMARY KEY (almacen_codigo);
ALTER TABLE todoOk.factura ADD CONSTRAINT PK_factura PRIMARY KEY (factura_numero);
ALTER TABLE todoOk.concepto ADD CONSTRAINT PK_concepto PRIMARY KEY (concepto_id);
ALTER TABLE todoOk.publicacion ADD CONSTRAINT PK_publicacion PRIMARY KEY (publicacion_codigo);
ALTER TABLE todoOk.detalle_factura ADD CONSTRAINT PK_detalle_factura PRIMARY KEY (publicacion_codigo, factura_numero, concepto_id);
ALTER TABLE todoOk.detalle_venta ADD CONSTRAINT PK_detalle_venta PRIMARY KEY (detalle_venta_id);
ALTER TABLE todoOk.venta ADD CONSTRAINT PK_venta PRIMARY KEY (codigo_venta);
ALTER TABLE todoOk.medio_pago ADD CONSTRAINT PK_medio_pago PRIMARY KEY (medio_pago_id);
ALTER TABLE todoOk.tipo_medio_pago ADD CONSTRAINT PK_tipo_medio_pago PRIMARY KEY (tipo_medio_pago_id);
ALTER TABLE todoOk.detalle_pago ADD CONSTRAINT PK_detalle_pago PRIMARY KEY (detalle_pago_id);
ALTER TABLE todoOk.pago ADD CONSTRAINT PK_pago PRIMARY KEY (pago_id);
ALTER TABLE todoOk.tipo_envio ADD CONSTRAINT PK_tipo_envio PRIMARY KEY (tipo_envio_id);
ALTER TABLE todoOk.envio ADD CONSTRAINT PK_envio PRIMARY KEY (envio_id);

-- CONSTRAINTS FORANEAS----
ALTER TABLE todoOk.localidad ADD CONSTRAINT FK_localidad_provincia FOREIGN KEY (provincia_id) REFERENCES todoOk.provincia(provincia_id);
ALTER TABLE todoOk.cliente ADD CONSTRAINT FK_cliente_usuario FOREIGN KEY (usuario_id) REFERENCES todoOk.usuario(usuario_id);
ALTER TABLE todoOk.vendedor ADD CONSTRAINT FK_vendedor_usuario FOREIGN KEY (usuario_id) REFERENCES todoOk.usuario(usuario_id);
ALTER TABLE todoOk.domicilio ADD CONSTRAINT FK_domicilio_usuario FOREIGN KEY (usuario_id) REFERENCES todoOk.usuario(usuario_id);
ALTER TABLE todoOk.domicilio ADD CONSTRAINT FK_domicilio_localidad FOREIGN KEY (localidad_id) REFERENCES todoOk.localidad(localidad_id);
ALTER TABLE todoOk.subrubro ADD CONSTRAINT FK_subrubro_rubro FOREIGN KEY (rubro_id) REFERENCES todoOk.rubro(rubro_id);
ALTER TABLE todoOk.producto ADD CONSTRAINT FK_producto_marca FOREIGN KEY (marca_id) REFERENCES todoOk.marca(marca_id);
ALTER TABLE todoOk.producto ADD CONSTRAINT FK_producto_modelo FOREIGN KEY (modelo_id) REFERENCES todoOk.modelo(modelo_id);
ALTER TABLE todoOk.factura ADD CONSTRAINT FK_factura_usuario FOREIGN KEY (usuario_id) REFERENCES todoOk.usuario(usuario_id);
ALTER TABLE todoOk.publicacion ADD CONSTRAINT FK_publicacion_producto FOREIGN KEY (producto_id) REFERENCES todoOk.producto(producto_id);
ALTER TABLE todoOk.publicacion ADD CONSTRAINT FK_publicacion_usuario FOREIGN KEY (usuario_id) REFERENCES todoOk.usuario(usuario_id);
ALTER TABLE todoOk.publicacion ADD CONSTRAINT FK_publicacion_almacen FOREIGN KEY (almacen_codigo) REFERENCES todoOk.almacen(almacen_codigo);
ALTER TABLE todoOk.detalle_factura ADD CONSTRAINT FK_detalle_factura_publicacion FOREIGN KEY (publicacion_codigo) REFERENCES todoOk.publicacion(publicacion_codigo);
ALTER TABLE todoOk.detalle_factura ADD CONSTRAINT FK_detalle_factura_factura FOREIGN KEY (factura_numero) REFERENCES todoOk.factura(factura_numero);
ALTER TABLE todoOk.detalle_factura ADD CONSTRAINT FK_detalle_factura_concepto FOREIGN KEY (concepto_id) REFERENCES todoOk.concepto(concepto_id);
ALTER TABLE todoOk.detalle_venta ADD CONSTRAINT FK_detalle_venta_publicacion FOREIGN KEY (publicacion_codigo) REFERENCES todoOk.publicacion(publicacion_codigo);
ALTER TABLE todoOk.venta ADD CONSTRAINT FK_venta_usuario FOREIGN KEY (usuario_id) REFERENCES todoOk.usuario(usuario_id);
ALTER TABLE todoOk.venta ADD CONSTRAINT FK_venta_detalle_venta FOREIGN KEY (detalle_venta_id) REFERENCES todoOk.detalle_venta(detalle_venta_id);
ALTER TABLE todoOk.pago ADD CONSTRAINT FK_pago_venta FOREIGN KEY (codigo_venta) REFERENCES todoOk.venta(codigo_venta);
ALTER TABLE todoOk.pago ADD CONSTRAINT FK_pago_detalle_pago FOREIGN KEY (detalle_pago_id) REFERENCES todoOk.detalle_pago(detalle_pago_id);
ALTER TABLE todoOk.pago ADD CONSTRAINT FK_pago_medio_pago FOREIGN KEY (medio_pago_id) REFERENCES todoOk.medio_pago(medio_pago_id);
ALTER TABLE todoOk.pago ADD CONSTRAINT FK_pago_tipo_medio_pago FOREIGN KEY (tipo_medio_pago_id) REFERENCES todoOk.tipo_medio_pago(tipo_medio_pago_id);
ALTER TABLE todoOk.envio ADD CONSTRAINT FK_envio_venta FOREIGN KEY (codigo_venta) REFERENCES todoOk.venta(codigo_venta);
ALTER TABLE todoOk.envio ADD CONSTRAINT FK_envio_domicilio FOREIGN KEY (domicilio_id) REFERENCES todoOk.domicilio(domicilio_id);
ALTER TABLE todoOk.envio ADD CONSTRAINT FK_envio_tipo_envio FOREIGN KEY (tipo_envio_id) REFERENCES todoOk.tipo_envio(tipo_envio_id);
GO


-------------------------------------------------------------------
/*						PROCEDURES								*/

CREATE PROCEDURE todoOk.InsertIntoProvincia
AS
BEGIN
    INSERT INTO todoOk.provincia (nombre)
    SELECT DISTINCT nombre
    FROM (SELECT VEN_USUARIO_DOMICILIO_PROVINCIA AS nombre
          FROM gd_esquema.Maestra
          WHERE VEN_USUARIO_DOMICILIO_PROVINCIA IS NOT NULL

          UNION

          SELECT CLI_USUARIO_DOMICILIO_PROVINCIA AS nombre
          FROM gd_esquema.Maestra
          WHERE CLI_USUARIO_DOMICILIO_PROVINCIA IS NOT NULL

          UNION

          SELECT ALMACEN_PROVINCIA AS nombre
          FROM gd_esquema.Maestra
          WHERE ALMACEN_PROVINCIA IS NOT NULL
         ) provincias;
END;
GO

CREATE PROCEDURE todoOk.InsertIntoLocalidad
AS
BEGIN
    INSERT INTO todoOk.localidad (nombre, 
						          provincia_id)
    SELECT DISTINCT nombre, 
					provincia_id
    FROM (SELECT VEN_USUARIO_DOMICILIO_LOCALIDAD nombre, 
				  p.provincia_id
          FROM gd_esquema.Maestra m 
		  INNER JOIN todoOk.provincia p 
				ON m.VEN_USUARIO_DOMICILIO_PROVINCIA = p.nombre
          WHERE VEN_USUARIO_DOMICILIO_LOCALIDAD IS NOT NULL

          UNION

          SELECT CLI_USUARIO_DOMICILIO_LOCALIDAD nombre, 
				 p.provincia_id
          FROM gd_esquema.Maestra m 
		  INNER JOIN todoOk.provincia p 
				ON m.CLI_USUARIO_DOMICILIO_PROVINCIA = p.nombre
          WHERE CLI_USUARIO_DOMICILIO_LOCALIDAD IS NOT NULL

          UNION

          SELECT ALMACEN_Localidad nombre, 
				 p.provincia_id
          FROM gd_esquema.Maestra m 
		  INNER JOIN todoOk.provincia p 
				ON m.ALMACEN_PROVINCIA = p.nombre
		  WHERE ALMACEN_Localidad IS NOT NULL
		 ) localidades;
END;
GO

CREATE PROCEDURE todoOk.InsertIntoUsuario
AS
BEGIN
	INSERT INTO todoOk.usuario (nombre, 
						        pass, 
								fecha_creacion)
	SELECT DISTINCT
    CLI_USUARIO_NOMBRE AS nombre,
    CLI_USUARIO_PASS AS pass,
    CLI_USUARIO_FECHA_CREACION AS fecha_creacion
FROM gd_esquema.Maestra
WHERE CLIENTE_DNI IS NOT NULL
GROUP BY CLIENTE_NOMBRE, CLIENTE_APELLIDO, CLIENTE_DNI,
         CLI_USUARIO_NOMBRE, CLI_USUARIO_PASS, CLI_USUARIO_FECHA_CREACION

UNION

SELECT DISTINCT
    VEN_USUARIO_NOMBRE AS nombre,
    VEN_USUARIO_PASS AS pass,
    VEN_USUARIO_FECHA_CREACION AS fecha_creacion
FROM gd_esquema.Maestra
WHERE VEN_USUARIO_NOMBRE IS NOT NULL
GROUP BY VENDEDOR_RAZON_SOCIAL, VENDEDOR_MAIL, VENDEDOR_CUIT,
         VEN_USUARIO_NOMBRE, VEN_USUARIO_PASS, VEN_USUARIO_FECHA_CREACION;
END;
GO

CREATE PROCEDURE todoOk.InsertIntoCliente
AS
BEGIN 
	INSERT INTO todoOk.cliente (usuario_id, 
								nombre, 
								apellido, 
								fecha_nacimiento, 
								mail, 
								dni )
	SELECT DISTINCT u.usuario_id,
					CLIENTE_NOMBRE,
					CLIENTE_APELLIDO,
					CLIENTE_FECHA_NAC,
					CLIENTE_MAIL,
					CLIENTE_DNI
	FROM gd_esquema.Maestra m 
	INNER JOIN todoOk.usuario u 
		ON m.CLI_USUARIO_NOMBRE = u.nombre AND
		   m.CLI_USUARIO_PASS = u.pass AND
		   m.CLI_USUARIO_FECHA_CREACION = u.fecha_creacion
	WHERE CLIENTE_DNI IS NOT NULL
END;
GO

CREATE PROCEDURE todoOk.InsertIntoVendedor
AS
BEGIN 
	INSERT INTO	todoOk.vendedor (usuario_id, 
								 razon_social, 
								 cuit, 
								 mail)
	SELECT DISTINCT u.usuario_id,
					VENDEDOR_RAZON_SOCIAL,
					VENDEDOR_CUIT,
					VENDEDOR_MAIL
	FROM gd_esquema.Maestra m 
	INNER JOIN todoOk.usuario u 
		ON m.VEN_USUARIO_NOMBRE = u.nombre AND
		   m.VEN_USUARIO_PASS = u.pass AND
		   m.VEN_USUARIO_FECHA_CREACION = u.fecha_creacion
	WHERE VENDEDOR_CUIT IS NOT NULL
END;
GO

CREATE PROCEDURE todoOk.InsertIntoDomicilio
AS
BEGIN
    INSERT INTO todoOk.domicilio (calle, 
								  nro_calle, 
								  piso, 
								  depto, 
								  cp, 
								  usuario_id, 
								  localidad_id)
    SELECT DISTINCT calle, 
					nro_calle, 
					piso, 
					depto, 
					cp, 
					usuario_id, 
					localidad_id
    FROM (SELECT CLI_USUARIO_DOMICILIO_CALLE AS calle,
				 CLI_USUARIO_DOMICILIO_NRO_CALLE AS nro_calle,
				 CLI_USUARIO_DOMICILIO_PISO AS piso,
				 CLI_USUARIO_DOMICILIO_DEPTO AS depto,
				 CLI_USUARIO_DOMICILIO_CP AS cp,
				 u.usuario_id,
				 l.localidad_id
        FROM gd_esquema.Maestra m 
        JOIN todoOk.usuario u 
			ON m.CLI_USUARIO_NOMBRE = u.nombre AND
			   m.CLI_USUARIO_PASS = u.pass AND
               m.CLI_USUARIO_FECHA_CREACION = u.fecha_creacion
		JOIN todoOk.provincia p 
			ON m.CLI_USUARIO_DOMICILIO_PROVINCIA = p.nombre
        JOIN todoOk.localidad l 
            ON m.CLI_USUARIO_DOMICILIO_LOCALIDAD = l.nombre AND
			l.provincia_id = p.provincia_id
        WHERE CLI_USUARIO_DOMICILIO_CALLE IS NOT NULL

        UNION

        SELECT VEN_USUARIO_DOMICILIO_CALLE AS calle,
			   VEN_USUARIO_DOMICILIO_NRO_CALLE AS nro_calle,
               VEN_USUARIO_DOMICILIO_PISO AS piso,
               VEN_USUARIO_DOMICILIO_DEPTO AS depto,
               VEN_USUARIO_DOMICILIO_CP AS cp,
               u.usuario_id, 
               l.localidad_id
        FROM  gd_esquema.Maestra m 
        JOIN todoOk.usuario u 
            ON m.VEN_USUARIO_NOMBRE = u.nombre AND
			   m.VEN_USUARIO_PASS = u.pass AND
               m.VEN_USUARIO_FECHA_CREACION = u.fecha_creacion
        JOIN todoOk.provincia p
			ON m.VEN_USUARIO_DOMICILIO_PROVINCIA = p.nombre
        JOIN todoOk.localidad l  
            ON m.VEN_USUARIO_DOMICILIO_LOCALIDAD = l.nombre AND
			   l.provincia_id = p.provincia_id
        WHERE VEN_USUARIO_DOMICILIO_CALLE IS NOT NULL
       )dom;
END;
GO

CREATE PROCEDURE todoOk.InsertIntoMarca
AS
BEGIN
	INSERT INTO todoOk.marca (marca)
	SELECT DISTINCT PRODUCTO_MARCA
	FROM gd_esquema.Maestra
	WHERE PRODUCTO_MARCA IS NOT NULL
END;
GO

CREATE PROCEDURE todoOk.InsertIntoModelo
AS
BEGIN
	INSERT INTO todoOk.modelo(modelo_codigo, 
							  descripcion)
	SELECT DISTINCT PRODUCTO_MOD_CODIGO, 
					PRODUCTO_MOD_DESCRIPCION
	FROM gd_esquema.Maestra
	WHERE PRODUCTO_MOD_CODIGO IS NOT NULL
END;
GO

CREATE PROCEDURE todoOk.InsertIntoRubro
AS
BEGIN
    INSERT INTO todoOk.rubro (descripcion)
    SELECT DISTINCT PRODUCTO_RUBRO_DESCRIPCION
    FROM gd_esquema.Maestra
    WHERE PRODUCTO_RUBRO_DESCRIPCION IS NOT NULL
END;
GO

CREATE PROCEDURE todoOk.InsertIntoSubRubro
AS
BEGIN
	INSERT INTO todoOk.subrubro (nombre, 
								 rubro_id)
	SELECT DISTINCT PRODUCTO_SUB_RUBRO,
					r.rubro_id
	FROM gd_esquema.Maestra m
	JOIN todoOk.rubro r 
		ON m.PRODUCTO_RUBRO_DESCRIPCION = r.descripcion
	WHERE m.PRODUCTO_SUB_RUBRO IS NOT NULL;
END;
GO

CREATE PROCEDURE todoOk.InsertIntoProducto
AS
BEGIN
    INSERT INTO todoOk.producto (producto_codigo, 
								 descripcion, 
							     subrubro_id, 
								 marca_id, 
							     modelo_id, 
								 precio)
    SELECT DISTINCT m.PRODUCTO_CODIGO, 
					m.PRODUCTO_DESCRIPCION, 
					sr.subrubro_id,
					ma.marca_id, 
					mo.modelo_id, 
					m.PRODUCTO_PRECIO
	FROM gd_esquema.Maestra m
	JOIN todoOk.subrubro sr 
		ON sr.nombre = m.PRODUCTO_SUB_RUBRO
	JOIN todoOk.marca ma 
		ON ma.marca = m.PRODUCTO_MARCA
	JOIN todoOk.modelo mo 
		ON mo.modelo_codigo = m.PRODUCTO_MOD_CODIGO
		AND mo.descripcion = m.PRODUCTO_MOD_DESCRIPCION
	WHERE m.PRODUCTO_CODIGO IS NOT NULL
END;
GO

CREATE PROCEDURE todoOk.InsertIntoAlmacen
AS
BEGIN
    INSERT INTO todoOk.almacen(almacen_codigo, 
							   calle, 
							   nro_calle, 
							   costo_dia_al, 
							   localidad_id)
    SELECT DISTINCT ALMACEN_CODIGO,
					ALMACEN_CALLE,
					ALMACEN_NRO_CALLE,
					ALMACEN_COSTO_DIA_AL,
					l.localidad_id
    FROM gd_esquema.Maestra m 
	INNER JOIN todoOk.provincia p 
		ON m.ALMACEN_PROVINCIA = p.nombre
    INNER JOIN todoOk.localidad l 
		ON m.ALMACEN_Localidad = l.nombre AND 
		   l.provincia_id = p.provincia_id
	WHERE m.ALMACEN_CODIGO IS NOT NULL
END;
GO

CREATE PROCEDURE todoOk.InsertIntoPublicacion
AS
BEGIN
	INSERT INTO todoOk.publicacion (publicacion_codigo, 
									descripcion, 
									fecha_inicio, 
									fecha_fin,
									producto_id, 
									stock, 
									precio, 
									usuario_id, 
									almacen_codigo,
									costo, 
									porcentaje)
	SELECT DISTINCT m.PUBLICACION_CODIGO,
					m.PUBLICACION_DESCRIPCION, 
					m.PUBLICACION_FECHA,  
					m.PUBLICACION_FECHA_V,
					p.producto_id, 
					m.PUBLICACION_STOCK,
					m.PUBLICACION_PRECIO,
					v.usuario_id,                                    
					a.almacen_codigo,                                                 
					m.PUBLICACION_COSTO, 
					m.PUBLICACION_PORC_VENTA
    FROM (SELECT * FROM gd_esquema.Maestra WHERE ALMACEN_CODIGO IS NOT NULL) AS m
    JOIN todoOk.vendedor AS v 
		ON  m.VENDEDOR_CUIT = v.cuit 
	JOIN todoOk.almacen a
        ON  m.ALMACEN_CODIGO = a.almacen_codigo 
    JOIN (SELECT MAX(producto_id) AS producto_id, producto_codigo FROM todoOk.producto GROUP BY producto_codigo) p
        ON m.PRODUCTO_CODIGO = p.producto_codigo
    
    WHERE m.PUBLICACION_DESCRIPCION IS NOT NULL 
END;
GO

CREATE PROCEDURE todoOk.InsertIntoFactura
AS
BEGIN
    INSERT INTO todoOk.factura (factura_numero, 
								fecha, 
								usuario_id, 
								total)  
	SELECT DISTINCT FACTURA_NUMERO,
					FACTURA_FECHA,
					v.usuario_id,
					FACTURA_TOTAL
    FROM gd_esquema.Maestra m 
	INNER JOIN todoOk.publicacion p
		ON m.PUBLICACION_CODIGO = p.publicacion_codigo
	INNER JOIN todoOk.vendedor v 
		ON p.usuario_id = v.usuario_id
    WHERE m.FACTURA_NUMERO IS NOT NULL;
END;
GO

CREATE PROCEDURE todoOk.InsertIntoConcepto
AS
BEGIN
	INSERT INTO todoOk.concepto (nombre)
	SELECT DISTINCT FACTURA_DET_TIPO
	FROM gd_esquema.Maestra m
	WHERE FACTURA_DET_TIPO IS NOT NULL
END;
GO

CREATE PROCEDURE todoOk.InsertIntoDetalleFactura
AS
BEGIN
	INSERT INTO todoOk.detalle_factura (publicacion_codigo, 
										factura_numero, 
										concepto_id, 
										precio, 
										cantidad, 
										subtotal)
	SELECT DISTINCT m.PUBLICACION_CODIGO,
					m.FACTURA_NUMERO,
					c.concepto_id,
					FACTURA_DET_PRECIO,
					FACTURA_DET_CANTIDAD,
					FACTURA_DET_SUBTOTAL
	FROM gd_esquema.Maestra m
	INNER JOIN todoOk.publicacion p 
		ON m.PUBLICACION_CODIGO = p.publicacion_codigo
	INNER JOIN todoOk.factura f 
		ON m.FACTURA_NUMERO = f.factura_numero
	INNER JOIN todoOk.concepto c
		ON m.FACTURA_DET_TIPO = c.nombre
	WHERE m.FACTURA_NUMERO IS NOT NULL AND
		  m.PUBLICACION_CODIGO IS NOT NULL AND
		  m.FACTURA_DET_TIPO IS NOT NULL;
END;
GO

CREATE PROCEDURE todoOk.InsertIntoDetalleVenta
AS
BEGIN
    INSERT INTO todoOk.detalle_venta (publicacion_codigo,
									  precio, 
									  cantidad_vendida, 
									  sub_total)
    SELECT DISTINCT p.publicacion_codigo, 
					VENTA_DET_PRECIO, 
					VENTA_DET_CANT, 
					VENTA_DET_SUB_TOTAL
    FROM gd_esquema.Maestra m 
	JOIN todoOk.publicacion p
		ON m.PUBLICACION_CODIGO = p.publicacion_codigo
    WHERE VENTA_CODIGO IS NOT NULL
END;
GO

CREATE PROCEDURE todoOk.InsertIntoVenta
AS
BEGIN
	INSERT INTO todoOk.venta (codigo_venta, 
							  usuario_id, 
					          fecha_hora, 
							  total, 
							  detalle_venta_id)
    SELECT VENTA_CODIGO,
		   u.usuario_id , 
		   VENTA_FECHA, 
		   VENTA_TOTAL, 
		   dv.detalle_venta_id
    FROM gd_esquema.Maestra m 
    INNER JOIN todoOk.detalle_venta dv  
        ON  m.PUBLICACION_CODIGO = dv.publicacion_codigo  AND
            m.VENTA_DET_PRECIO = dv.precio AND
            m.VENTA_DET_CANT = dv.cantidad_vendida AND
            m.VENTA_DET_SUB_TOTAL = dv.sub_total
	INNER JOIN todoOk.usuario u 
		ON  m.CLI_USUARIO_NOMBRE = u.nombre AND
            m.CLI_USUARIO_PASS = u.pass AND
			m.CLI_USUARIO_FECHA_CREACION = u.fecha_creacion
    WHERE VENTA_CODIGO IS NOT NULL;
END;
GO

CREATE PROCEDURE todoOk.InsertIntoMedioPago
AS
BEGIN
    INSERT INTO todoOk.medio_pago (medio_pago)
    SELECT DISTINCT PAGO_MEDIO_PAGO
    FROM gd_esquema.Maestra
    WHERE PAGO_MEDIO_PAGO IS NOT NULL
END;
GO

CREATE PROCEDURE todoOk.InsertIntoTipoMedioPago
AS
BEGIN
    INSERT INTO todoOk.tipo_medio_pago (tipo_medio_pago)
    SELECT DISTINCT PAGO_TIPO_MEDIO_PAGO
    FROM gd_esquema.Maestra
    WHERE PAGO_TIPO_MEDIO_PAGO IS NOT NULL
END;
GO

CREATE PROCEDURE todoOk.InsertIntoDetallePago
AS
BEGIN
    INSERT INTO todoOk.detalle_pago (nro_tarjeta, 
									 fecha_venc_tarjeta, 
									 cant_cuotas)
    SELECT DISTINCT PAGO_NRO_TARJETA, 
					PAGO_FECHA_VENC_TARJETA, 
					PAGO_CANT_CUOTAS
    FROM gd_esquema.Maestra
    WHERE PAGO_NRO_TARJETA IS NOT NULL
END;
GO

CREATE PROCEDURE todoOk.InsertIntoPago
AS
BEGIN
    INSERT INTO todoOk.pago (codigo_venta, 
					         detalle_pago_id, 
							 importe, 
							 medio_pago_id, 
						     tipo_medio_pago_id, 
						     fecha)
    SELECT DISTINCT	v.codigo_venta,
					(SELECT detalle_pago_id 
					 FROM todoOk.detalle_pago 
					 WHERE nro_tarjeta = m.PAGO_NRO_TARJETA AND 
						fecha_venc_tarjeta = m.PAGO_FECHA_VENC_TARJETA),
					PAGO_IMPORTE, 
					(SELECT medio_pago_id 
					 FROM todoOk.medio_pago 
					 WHERE medio_pago = m.PAGO_MEDIO_PAGO), 
					(SELECT tipo_medio_pago_id 
					FROM todoOk.tipo_medio_pago 
					WHERE tipo_medio_pago = m.PAGO_TIPO_MEDIO_PAGO), 
					 PAGO_FECHA
    FROM gd_esquema.Maestra m 
	JOIN todoOk.venta v
		ON m.VENTA_CODIGO = v.codigo_venta
    WHERE PAGO_IMPORTE IS NOT NULL
END;
GO

CREATE PROCEDURE todoOk.InsertIntoTipoEnvio
AS
BEGIN
    INSERT INTO todoOk.tipo_envio(nombre)
    SELECT DISTINCT ENVIO_TIPO
    FROM gd_esquema.Maestra
    WHERE ENVIO_TIPO IS NOT NULL;
END;
GO

CREATE PROCEDURE todoOk.InsertIntoEnvio
AS
BEGIN
    INSERT INTO todoOk.envio(codigo_venta,
							 domicilio_id, 
							 fecha_programada, 
							 hora_inicio, 
							 hora_fin, 
							 costo, 
							 fecha_entrega, 
							 tipo_envio_id)
    SELECT DISTINCT v.codigo_venta,
					d.domicilio_id,
					ENVIO_FECHA_PROGAMADA,
					ENVIO_HORA_INICIO,
					ENVIO_HORA_FIN_INICIO,
					ENVIO_COSTO,
					ENVIO_FECHA_ENTREGA,
					te.tipo_envio_id
    FROM gd_esquema.Maestra m 
	JOIN todoOk.domicilio d  
        ON m.CLI_USUARIO_DOMICILIO_CALLE = d.calle AND
		   m.CLI_USUARIO_DOMICILIO_NRO_CALLE = d.nro_calle AND
		   m.CLI_USUARIO_DOMICILIO_PISO = d.piso AND
		   m.CLI_USUARIO_DOMICILIO_DEPTO = d.depto AND
		   m.CLI_USUARIO_DOMICILIO_CP = d.cp 
    JOIN todoOk.venta v  
        ON m.VENTA_CODIGO = v.codigo_venta
    JOIN todoOk.tipo_envio te 
        ON m.ENVIO_TIPO = te.nombre
    WHERE ENVIO_HORA_INICIO IS NOT NULL;
END;
GO

----------------------------------------------------------
/*					EXEC					*/

EXEC todoOk.InsertIntoProvincia;
EXEC todoOk.InsertIntoLocalidad;
EXEC todoOk.InsertIntoUsuario;
EXEC todoOk.InsertIntoCliente;
EXEC todoOk.InsertIntoVendedor;
EXEC todoOk.InsertIntoDomicilio;
EXEC todoOk.InsertIntoMarca;
EXEC todoOk.InsertIntoModelo;
EXEC todoOk.InsertIntoRubro;
EXEC todoOk.InsertIntoSubRubro;
EXEC todoOk.InsertIntoProducto;
EXEC todoOk.InsertIntoAlmacen;
EXEC todoOk.InsertIntoPublicacion;
EXEC todoOk.InsertIntoFactura;
EXEC todoOk.InsertIntoConcepto;
EXEC todoOk.InsertIntoDetalleFactura; 
EXEC todoOk.InsertIntoDetalleVenta;
EXEC todoOk.InsertIntoVenta;
EXEC todoOk.InsertIntoMedioPago;
EXEC todoOk.InsertIntoTipoMedioPago;
EXEC todoOk.InsertIntoDetallePago;
EXEC todoOk.InsertIntoPago;
EXEC todoOk.InsertIntoTipoEnvio;
EXEC todoOk.InsertIntoEnvio;
