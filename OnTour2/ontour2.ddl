-- Generado por Oracle SQL Developer Data Modeler 18.2.0.179.0756
--   en:        2018-09-22 19:39:27 CLST
--   sitio:      Oracle Database 11g
--   tipo:      Oracle Database 11g



CREATE TABLE actividades_tour (
    actividades_id   INTEGER NOT NULL,
    nombre           VARCHAR2(45) NOT NULL,
    descripcion      VARCHAR2(150),
    tours_tours_id   INTEGER NOT NULL
);

ALTER TABLE actividades_tour ADD CONSTRAINT actividades_tour_pk PRIMARY KEY ( actividades_id );

CREATE TABLE agente (
    agente_id    INTEGER NOT NULL,
    nombre       VARCHAR2(45) NOT NULL,
    ap_paterno   VARCHAR2(45) NOT NULL,
    username     VARCHAR2(45) NOT NULL,
    email        VARCHAR2(45) NOT NULL,
    password     VARCHAR2(45) NOT NULL
);

ALTER TABLE agente ADD CONSTRAINT agente_pk PRIMARY KEY ( agente_id );

CREATE TABLE alumnos (
    alumnos_id                 INTEGER NOT NULL,
    ap_paterno                 VARCHAR2(45) NOT NULL,
    ap_materno                 VARCHAR2(45) NOT NULL,
    nombre                     VARCHAR2(45) NOT NULL,
    rut                        VARCHAR2(15) NOT NULL,
    fecha_nac                  DATE NOT NULL,
    cursos_cursos_id           INTEGER NOT NULL,
    apoderados_apoderados_id   INTEGER NOT NULL
);

ALTER TABLE alumnos ADD CONSTRAINT alumnos_pk PRIMARY KEY ( alumnos_id );

CREATE TABLE apoderados (
    apoderados_id   INTEGER NOT NULL,
    username        VARCHAR2(45) NOT NULL,
    email           VARCHAR2(45) NOT NULL,
    ap_paterno      VARCHAR2(45) NOT NULL,
    ap_materno      VARCHAR2(45) NOT NULL,
    nombre          VARCHAR2(45) NOT NULL,
    telefono        VARCHAR2(12),
    celular         VARCHAR2(12) NOT NULL,
    password        VARCHAR2(45) NOT NULL
);

ALTER TABLE apoderados ADD CONSTRAINT apoderados_pk PRIMARY KEY ( apoderados_id );

CREATE TABLE colegios (
    colegios_id        INTEGER NOT NULL,
    nombre_colegio     VARCHAR2(45) NOT NULL,
    cursos_cursos_id   INTEGER NOT NULL,
    direccion          VARCHAR2(25) NOT NULL,
    telefono           VARCHAR2(12) NOT NULL
);

ALTER TABLE colegios ADD CONSTRAINT colegios_pk PRIMARY KEY ( colegios_id );

CREATE TABLE contratos (
    contratos_id       INTEGER NOT NULL,
    fecha              DATE NOT NULL,
    nombre_colegio     VARCHAR2(50) NOT NULL,
    subtotal           INTEGER NOT NULL,
    total              INTEGER NOT NULL,
    tours_tours_id     INTEGER NOT NULL,
    agente_agente_id   INTEGER NOT NULL
);

ALTER TABLE contratos ADD CONSTRAINT contratos_pk PRIMARY KEY ( contratos_id );

CREATE TABLE cursos (
    cursos_id                  INTEGER NOT NULL,
    nombre_curso               VARCHAR2(10) NOT NULL,
    encargados_encargados_id   INTEGER NOT NULL
);

ALTER TABLE cursos ADD CONSTRAINT cursos_pk PRIMARY KEY ( cursos_id );

CREATE TABLE destinos (
    destinos_id   INTEGER NOT NULL,
    ciudad        VARCHAR2(45) NOT NULL,
    pais          VARCHAR2(45) NOT NULL
);

ALTER TABLE destinos ADD CONSTRAINT destinos_pk PRIMARY KEY ( destinos_id );

CREATE TABLE encargados (
    encargados_id      INTEGER NOT NULL,
    nombre             VARCHAR2(45) NOT NULL,
    ap_paterno         VARCHAR2(45) NOT NULL,
    username           VARCHAR2(45) NOT NULL,
    email              VARCHAR2(45) NOT NULL,
    password           VARCHAR2(45) NOT NULL,
    telefono           VARCHAR2(12) NOT NULL,
    agente_agente_id   INTEGER NOT NULL
);

ALTER TABLE encargados ADD CONSTRAINT encargados_pk PRIMARY KEY ( encargados_id );

CREATE TABLE pagos (
    pagos_id                   INTEGER NOT NULL,
    fecha                      DATE NOT NULL,
    monto                      INTEGER NOT NULL,
    contratos_contratos_id     INTEGER NOT NULL,
    apoderados_apoderados_id   INTEGER NOT NULL,
    encargados_encargados_id   INTEGER NOT NULL
);

ALTER TABLE pagos ADD CONSTRAINT pagos_pk PRIMARY KEY ( pagos_id );

CREATE TABLE polizas (
    polizas_id        INTEGER NOT NULL,
    fecha_cobertura   DATE NOT NULL,
    suma_asegurada    INTEGER NOT NULL,
    prima             INTEGER NOT NULL,
    descripcion       VARCHAR2(150) NOT NULL
);

ALTER TABLE polizas ADD CONSTRAINT polizas_pk PRIMARY KEY ( polizas_id );

CREATE TABLE servicios_adicionales (
    servicios_id             INTEGER NOT NULL,
    nombre                   VARCHAR2(45) NOT NULL,
    precio                   INTEGER NOT NULL,
    tipo                     VARCHAR2(45) NOT NULL,
    contratos_contratos_id   INTEGER NOT NULL
);

ALTER TABLE servicios_adicionales ADD CONSTRAINT servicios_adicionales_pk PRIMARY KEY ( servicios_id );

CREATE TABLE tours (
    tours_id               INTEGER NOT NULL,
    nombre                 VARCHAR2(45) NOT NULL,
    precio_base            INTEGER NOT NULL,
    dias                   INTEGER NOT NULL,
    destinos_destinos_id   INTEGER NOT NULL,
    precio_total           INTEGER NOT NULL,
    polizas_polizas_id     INTEGER NOT NULL
);

ALTER TABLE tours ADD CONSTRAINT tours_pk PRIMARY KEY ( tours_id );

ALTER TABLE actividades_tour
    ADD CONSTRAINT actividades_tour_tours_fk FOREIGN KEY ( tours_tours_id )
        REFERENCES tours ( tours_id );

ALTER TABLE alumnos
    ADD CONSTRAINT alumnos_apoderados_fk FOREIGN KEY ( apoderados_apoderados_id )
        REFERENCES apoderados ( apoderados_id );

ALTER TABLE alumnos
    ADD CONSTRAINT alumnos_cursos_fk FOREIGN KEY ( cursos_cursos_id )
        REFERENCES cursos ( cursos_id );

ALTER TABLE colegios
    ADD CONSTRAINT colegios_cursos_fk FOREIGN KEY ( cursos_cursos_id )
        REFERENCES cursos ( cursos_id );

ALTER TABLE contratos
    ADD CONSTRAINT contratos_agente_fk FOREIGN KEY ( agente_agente_id )
        REFERENCES agente ( agente_id );

ALTER TABLE contratos
    ADD CONSTRAINT contratos_tours_fk FOREIGN KEY ( tours_tours_id )
        REFERENCES tours ( tours_id );

ALTER TABLE cursos
    ADD CONSTRAINT cursos_encargados_fk FOREIGN KEY ( encargados_encargados_id )
        REFERENCES encargados ( encargados_id );

ALTER TABLE encargados
    ADD CONSTRAINT encargados_agente_fk FOREIGN KEY ( agente_agente_id )
        REFERENCES agente ( agente_id );

ALTER TABLE pagos
    ADD CONSTRAINT pagos_apoderados_fk FOREIGN KEY ( apoderados_apoderados_id )
        REFERENCES apoderados ( apoderados_id );

ALTER TABLE pagos
    ADD CONSTRAINT pagos_contratos_fk FOREIGN KEY ( contratos_contratos_id )
        REFERENCES contratos ( contratos_id );

ALTER TABLE pagos
    ADD CONSTRAINT pagos_encargados_fk FOREIGN KEY ( encargados_encargados_id )
        REFERENCES encargados ( encargados_id );

ALTER TABLE servicios_adicionales
    ADD CONSTRAINT servicios_contratos_fk FOREIGN KEY ( contratos_contratos_id )
        REFERENCES contratos ( contratos_id );

ALTER TABLE tours
    ADD CONSTRAINT tours_destinos_fk FOREIGN KEY ( destinos_destinos_id )
        REFERENCES destinos ( destinos_id );

ALTER TABLE tours
    ADD CONSTRAINT tours_polizas_fk FOREIGN KEY ( polizas_polizas_id )
        REFERENCES polizas ( polizas_id );



-- Informe de Resumen de Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                            13
-- CREATE INDEX                             0
-- ALTER TABLE                             27
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
