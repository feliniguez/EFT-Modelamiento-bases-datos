-- Generado por Oracle SQL Developer Data Modeler 24.3.1.351.0831
--   en:        2026-10-11 19:25:34 CLST
--   sitio:      Oracle Database 11g
--   tipo:      Oracle Database 11g



-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE ASOCIACION 
    ( 
     cod_asociacion          NUMBER  NOT NULL , 
     nombre                  CLOB  NOT NULL , 
     fecha_creacion          DATE  NOT NULL , 
     tipo                    CLOB  NOT NULL , 
     JUGADOR_cod_inscripcion NUMBER  NOT NULL 
    ) 
;

ALTER TABLE ASOCIACION 
    ADD CONSTRAINT ASOCIACION_PK PRIMARY KEY ( cod_asociacion ) ;

CREATE TABLE CLUB 
    ( 
     cod_club                NUMBER  NOT NULL , 
     nombre                  CLOB  NOT NULL , 
     patrimonio              NUMBER  NOT NULL , 
     direccion               CLOB  NOT NULL , 
     JUGADOR_cod_inscripcion NUMBER  NOT NULL , 
     fecha_inicio            DATE  NOT NULL , 
     fecha_fin               DATE 
    ) 
;

ALTER TABLE CLUB 
    ADD CONSTRAINT CLUB_PK PRIMARY KEY ( cod_club ) ;

CREATE TABLE DOMINA 
    ( 
     JUGADOR_cod_inscripcion NUMBER  NOT NULL , 
     IDIOMA_cod_idioma       NUMBER  NOT NULL , 
     nivel_dominio           CLOB  NOT NULL 
    ) 
;

ALTER TABLE DOMINA 
    ADD CONSTRAINT DOMINA_PK PRIMARY KEY ( JUGADOR_cod_inscripcion, IDIOMA_cod_idioma ) ;

CREATE TABLE ESCUELA_FUTBOL 
    ( 
     cod_escuela             NUMBER  NOT NULL , 
     nombre                  CLOB  NOT NULL , 
     capacidad               NUMBER  NOT NULL , 
     fecha_fundacion         DATE  NOT NULL , 
     JUGADOR_cod_inscripcion NUMBER  NOT NULL , 
     anio_fin_amateurismo    NUMBER 
    ) 
;

ALTER TABLE ESCUELA_FUTBOL 
    ADD CONSTRAINT ESCUELA_FUTBOL_PK PRIMARY KEY ( cod_escuela ) ;

CREATE TABLE IDIOMA 
    ( 
     cod_idioma NUMBER  NOT NULL , 
     nombre     CLOB  NOT NULL 
    ) 
;

ALTER TABLE IDIOMA 
    ADD CONSTRAINT IDIOMA_PK PRIMARY KEY ( cod_idioma ) ;

CREATE TABLE JUGADOR 
    ( 
     cod_inscripcion     NUMBER  NOT NULL , 
     puesto              CLOB , 
     monto_total_premios NUMBER 
    ) 
;

ALTER TABLE JUGADOR 
    ADD CONSTRAINT JUGADOR_PK PRIMARY KEY ( cod_inscripcion ) ;

CREATE TABLE PERSONAL_PLANTA 
    ( 
     cod_inscripcion           NUMBER  NOT NULL , 
     cantidad_horas_trabajadas NUMBER , 
     valor_horas_extras        NUMBER 
    ) 
;

ALTER TABLE PERSONAL_PLANTA 
    ADD CONSTRAINT PERSONAL_PLANTA_PK PRIMARY KEY ( cod_inscripcion ) ;

CREATE TABLE TRABAJADOR 
    ( 
     cod_inscripcion    NUMBER  NOT NULL , 
     rut                CLOB  NOT NULL , 
     digito_verificador CLOB  NOT NULL , 
     nombres            CLOB  NOT NULL , 
     apellidos          CLOB  NOT NULL , 
     sueldo_base        NUMBER  NOT NULL , 
     fecha_nacimiento   DATE  NOT NULL , 
     genero             CLOB  NOT NULL , 
     estado_civil       CLOB  NOT NULL , 
     telefono_movil     CLOB  NOT NULL , 
     direccion          CLOB  NOT NULL , 
     comuna_residencia  CLOB  NOT NULL 
    ) 
;

ALTER TABLE TRABAJADOR 
    ADD CONSTRAINT TRABAJADOR_PK PRIMARY KEY ( cod_inscripcion ) ;

ALTER TABLE ASOCIACION 
    ADD CONSTRAINT ASOCIACION_JUGADOR_FK FOREIGN KEY 
    ( 
     JUGADOR_cod_inscripcion
    ) 
    REFERENCES JUGADOR 
    ( 
     cod_inscripcion
    ) 
;

ALTER TABLE CLUB 
    ADD CONSTRAINT CLUB_JUGADOR_FK FOREIGN KEY 
    ( 
     JUGADOR_cod_inscripcion
    ) 
    REFERENCES JUGADOR 
    ( 
     cod_inscripcion
    ) 
;

ALTER TABLE DOMINA 
    ADD CONSTRAINT DOMINA_IDIOMA_FK FOREIGN KEY 
    ( 
     IDIOMA_cod_idioma
    ) 
    REFERENCES IDIOMA 
    ( 
     cod_idioma
    ) 
;

ALTER TABLE DOMINA 
    ADD CONSTRAINT DOMINA_JUGADOR_FK FOREIGN KEY 
    ( 
     JUGADOR_cod_inscripcion
    ) 
    REFERENCES JUGADOR 
    ( 
     cod_inscripcion
    ) 
;

ALTER TABLE ESCUELA_FUTBOL 
    ADD CONSTRAINT ESCUELA_FUTBOL_JUGADOR_FK FOREIGN KEY 
    ( 
     JUGADOR_cod_inscripcion
    ) 
    REFERENCES JUGADOR 
    ( 
     cod_inscripcion
    ) 
;

ALTER TABLE JUGADOR 
    ADD CONSTRAINT JUGADOR_TRABAJADOR_FK FOREIGN KEY 
    ( 
     cod_inscripcion
    ) 
    REFERENCES TRABAJADOR 
    ( 
     cod_inscripcion
    ) 
;

ALTER TABLE PERSONAL_PLANTA 
    ADD CONSTRAINT PERSONAL_PLANTA_TRABAJADOR_FK FOREIGN KEY 
    ( 
     cod_inscripcion
    ) 
    REFERENCES TRABAJADOR 
    ( 
     cod_inscripcion
    ) 
;

--  ERROR: No Discriminator Column found in Arc FKArc_1 - constraint trigger for Arc cannot be generated 

--  ERROR: No Discriminator Column found in Arc FKArc_1 - constraint trigger for Arc cannot be generated



-- Informe de Resumen de Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                             8
-- CREATE INDEX                             0
-- ALTER TABLE                             15
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
-- ERRORS                                   2
-- WARNINGS                                 0
