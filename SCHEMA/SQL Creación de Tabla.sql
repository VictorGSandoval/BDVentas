create database ventas
	DEFAULT CHARACTER SET utf8;
use ventas;
CREATE TABLE CLIENTE (
    IDCLI char(8) NOT NULL COMMENT 'Contiene el código de asignación del cliente.',
    NOMCLI varchar(20) NOT NULL COMMENT 'Identificador del nombre del cliente',
    APECLI varchar(20) NOT NULL COMMENT 'Identificador del apellido del cliente',
    CIUCLI varchar(20) NOT NULL COMMENT 'Identificador de la ciudad del cliente',
    ESTCLI char(2) NOT NULL COMMENT 'Contiene el estado del cliente.',
    UBICLI varchar(11) NOT NULL COMMENT 'Identificador del codigo postal.',
    BALCLI decimal(6,2) NOT NULL COMMENT 'Contiene el pago que realizo nada cliente',
    CONSTRAINT CLIENTE_pk PRIMARY KEY (IDCLI)
) COMMENT 'Contiene lOS datos de los clientes.';

CREATE TABLE EMPLEADO (
    IDEMP char(8) NOT NULL COMMENT 'Contiene el código de asignación del empleado.',
    NOMEMP varchar(20) NOT NULL COMMENT 'Identificador del nombre del empleado',
    APEEMP varchar(20) NOT NULL COMMENT 'Identificador del apellido del empleado',
    CELEMP varchar(14) NOT NULL COMMENT 'Identificador del numero de celular del empleado',
    EMAEMP varchar(20) NOT NULL COMMENT 'Contiene los correos de los empleados',
    CONSTRAINT EMPLEADO_pk PRIMARY KEY (IDEMP)
) COMMENT 'Contiene lOS datos de los empleados.';

CREATE TABLE ORDEN (
    IDORD int NOT NULL COMMENT 'Contiene el código de orden.',
    FECORD date NULL COMMENT 'La fecha de la orden.',
    IDCLI char(8) NOT NULL COMMENT 'Identificador del cliente.',
    IDEMP char(8) NOT NULL COMMENT 'Identificador del empleado.',
    CONSTRAINT ORDEN_pk PRIMARY KEY (IDORD)
) COMMENT 'Contiene lOS datos de todas las Ordenes.';

-- foreign keys
-- Reference: Orden_Cliente (table: ORDEN)
ALTER TABLE ORDEN ADD CONSTRAINT Orden_Cliente FOREIGN KEY Orden_Cliente (IDCLI)
    REFERENCES CLIENTE (IDCLI);
    
-- Reference: Orden_Cliente (table: ORDEN)
ALTER TABLE ORDEN ADD CONSTRAINT Orden_Empleado FOREIGN KEY Orden_Empleado (IDEMP)
    REFERENCES EMPLEADO (IDEMP);
    
    



