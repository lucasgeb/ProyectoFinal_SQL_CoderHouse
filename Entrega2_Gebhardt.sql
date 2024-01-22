DROP SCHEMA IF EXISTS COPA_LIBERTADORES;
CREATE SCHEMA IF NOT EXISTS COPA_LIBERTADORES;
USE COPA_LIBERTADORES;

DROP TABLE IF EXISTS PAISES;
CREATE TABLE IF NOT EXISTS PAISES
(
`idPais` INT NOT NULL AUTO_INCREMENT,
`nombrePais` VARCHAR(50) NOT NULL,
PRIMARY KEY (`idPais`)
);


DROP TABLE IF EXISTS FASES;
CREATE TABLE IF NOT EXISTS FASES
(`idFase` INT NOT NULL AUTO_INCREMENT,
`nombreFase` VARCHAR(50) NOT NULL,
PRIMARY KEY (`idFase`)
);

DROP TABLE IF EXISTS EQUIPOS;
CREATE TABLE IF NOT EXISTS EQUIPOS
(
`idEquipo` INT NOT NULL AUTO_INCREMENT,
`nombreEquipo` VARCHAR(50) NOT NULL,
`paisEquipo` VARCHAR(50) NOT NULL,
`colorEquipo` VARCHAR(50),
`sociosEquipo` INT,
`estadioEquipo` VARCHAR(50),
PRIMARY KEY (`idEquipo`)
);

DROP TABLE IF EXISTS TORNEOS;
CREATE TABLE IF NOT EXISTS TORNEOS
(
`idTorneo` INT NOT NULL AUTO_INCREMENT,
`añoEdicion` INT NOT NULL,
`fase` VARCHAR(50),
`equipoCampeon` VARCHAR(50),
PRIMARY KEY (`idTorneo`)
);


DROP TABLE IF EXISTS JUGADORES;
CREATE TABLE IF NOT EXISTS JUGADORES
(
`idJugador` INT NOT NULL AUTO_INCREMENT,
`nombreJugador` VARCHAR(50) NOT NULL,
`apellidoJugador` VARCHAR(50) NOT NULL,
`nacionalidad` VARCHAR(50),
`edad` INT,
`equipoJugador` VARCHAR(50),
`posicion` VARCHAR(50) NOT NULL,
`pegada` ENUM('DIESTRO','ZURDO'),
`golesJugador` INT,
`amonestaciones` INT,
`expulsiones` INT,
PRIMARY KEY(`idJugador`)
);

DROP TABLE IF EXISTS PARTIDOS;
CREATE TABLE IF NOT EXISTS PARTIDOS
(
    `idPartido` INT NOT NULL AUTO_INCREMENT,
    `añoEdicion` INT NOT NULL,
    `fecha` datetime,
    `estadio` VARCHAR (50),
    `equipoVisitante` VARCHAR (50) NOT NULL,
    `equipoLocal` VARCHAR (50) NOT NULL,
    `golesVisitante` VARCHAR (50) NOT NULL,
    `golesLocal` INT,
    `resultado` ENUM('LOCAL','VISITANTE','EMPATE','SUSPENDIDO') NOT NULL,
    PRIMARY KEY(`idPartido`)
);


ALTER TABLE PAISES ADD INDEX(`nombrePais`);
ALTER TABLE FASES ADD INDEX(`nombreFase`);
ALTER TABLE EQUIPOS ADD INDEX(`nombreEquipo`);
ALTER TABLE EQUIPOS ADD INDEX(`estadioEquipo`);
ALTER TABLE EQUIPOS ADD INDEX(`idEquipo`);
ALTER TABLE TORNEOS ADD INDEX(`añoEdicion`);

ALTER TABLE EQUIPOS ADD CONSTRAINT `paisEquipo` FOREIGN KEY (`paisEquipo`) REFERENCES `PAISES`(`nombrePais`);
ALTER TABLE TORNEOS ADD CONSTRAINT `faseTorneo` FOREIGN KEY (`fase`) REFERENCES `FASES`(`nombreFase`);
ALTER TABLE TORNEOS ADD CONSTRAINT `campeon` FOREIGN KEY (`equipoCampeon`) REFERENCES `EQUIPOS`(`nombreEquipo`);
ALTER TABLE JUGADORES ADD CONSTRAINT `paisJugador` FOREIGN KEY (`nacionalidad`) REFERENCES `PAISES`(`nombrePais`);
ALTER TABLE JUGADORES ADD CONSTRAINT `equipoJugador` FOREIGN KEY (`equipoJugador`) REFERENCES `EQUIPOS`(`nombreEquipo`);
ALTER TABLE PARTIDOS ADD CONSTRAINT `año` FOREIGN KEY (`añoEdicion`) REFERENCES `TORNEOS`(`añoEdicion`);
ALTER TABLE PARTIDOS ADD CONSTRAINT `estadioParido` FOREIGN KEY (`estadio`) REFERENCES `EQUIPOS`(`estadioEquipo`);
ALTER TABLE PARTIDOS ADD CONSTRAINT `local` FOREIGN KEY (`equipoLocal`) REFERENCES `EQUIPOS`(`nombreEquipo`);
ALTER TABLE PARTIDOS ADD CONSTRAINT `visitante` FOREIGN KEY (`equipoVisitante`) REFERENCES `EQUIPOS`(`nombreEquipo`);

USE COPA_LIBERTADORES;

INSERT INTO paises(idPais, nombrePais) VALUE
(1,'Argentina'),
(2,'Bolivia'),
(3,'Brasil'),
(4,'Chile'),
(5,'Colombia'),
(6,'Ecuador'),
(7,'Paraguay'),
(8,'Peru'),
(9,'Uruguay'),
(10,'Venezuela');

INSERT INTO fases(idFase, nombreFase) VALUES
(1,'Fase de grupos'),
(2,'Octavo de final'),
(3,'Cuarto de final'),
(4,'Semifinal'),
(5,'Final');

INSERT INTO equipos(idEquipo, nombreEquipo, paisEquipo, colorEquipo, sociosEquipo, estadioEquipo) VALUES
(1,'Boca Juniors','Argentina','Azul y Amarillo',315000,'Alberto J Armando'),
(2,'River Plate','Argentina','Blanco y Rojo',300000,'Mas Monumental'),
(3,'Peñarol','Uruguay','Negro y Amarillo',85000,'Campeon del Siglo'),
(4,'Nacional','Uruguay','Azul y blanco',130800,'Gran Parque Central'),
(5,'Palmeiras','Brasil','Verde',135000,'Allianz Parque'),
(6,'Internacional','Brasil','Blanco y Rojo',75000,'Beira Rio'),
(7,'Universidad de Chile','Chile','Blanco y Azul',96000,'San Carlos de Apoquindo'),
(8,'Colo Colo','Chile','Blanco y Rojo',86000,'Monumental'),
(9,'Emelec','Ecuador','Azul',45000,'George Capwell'),
(10,'America de Cali','Ecuador','Blanco y Rojo',75000,'Olimpico Pascual Guerrero'),
(11,'Olimpia','Paraguay','Negro y Blanco',49000,'Manuel Ferreira'),
(12,'Nacional','Paraguay','Rojo Azul y Blanco',55000,'Arsenio Erico'),
(13,'Racing Club','Argentina','Celeste y Blanco',90000,'Presidente Peron'),
(14,'Fluminense','Brasil','Verde y Bordo',89333,'Maracana'),
(15,'Independiente','Argentina','Rojo',100000,'Libertadores de America');

INSERT INTO torneos(idTorneo, añoEdicion,equipoCampeon) VALUES 
(1,2018,'River Plate'),
(3,2020,'Palmeiras'),
(4,2021,'Palmeiras'),
(6,2023,'Fluminense');

INSERT INTO jugadores(idJugador, nombreJugador, apellidoJugador, nacionalidad, edad, equipoJugador, posicion, pegada, golesJugador, amonestaciones, expulsiones) VALUES
(1,'German','Cano','Argentina',35,'Fluminense','Delantero','Diestro',13,2,0),
(2,'Edison','Cavani','Uruguay',36,'Boca Juniors','Delantero','Diestro',1,2,0),
(3,'Nicolas','De la Cruz','Uruguay',26,'River Plate','Mediocampista','Diestro',1,2,0),
(4,'Leonardo','Sigali','Argentina',35,'Racing Club','Defensor','Diestro',0,1,0),
(5,'Endrick','Moreira','Brasil',17,'Palmeiras','Delantero','Zurdo',1,1,1),
(6,'Rony','Barbosa','Brasil',35,'Palmeiras','Delantero','Diestro',3,3,0),
(7,'Lucas','Soto','Chile',20,'Colo Colo','Defensor','Diestro',0,0,0),
(8,'Agustin','Bouzat','Argentina',29,'Colo Colo','Delantero','Zurdo',0,2,0),
(9,'Enner','Valencia','Ecuador',34,'Internacional','Delantero','Diestro',4,0,0),
(10,'Alan','Patrick','Brasil',32,'Internacional','Mediocampista','Diestro',5,3,0);

INSERT INTO partidos(idPartido, añoEdicion, fecha, estadio, equipoVisitante, equipoLocal, golesVisitante, golesLocal, resultado) VALUES
(1,2023,'2023-08-24 21:30:00','Maracana','Olimpia','Fluminense',0,2,'Local'),
(2,2023,'2023-08-31 21:30:00','Manuel Ferreira','Fluminense','Olimpia',3,1,'Visitante'),
(3,2023,'2023-09-28 21:30:00','Alberto J Armando','Palmeiras','Boca Juniors',0,0,'Empate'),
(4,2023,'2023-10-05 21:30:00','Allianz Parque','Boca Juniors','Palmeiras',1,1,'Empate'),
(5,2023,'2023-09-27 21:30:00','Maracana','Internacional','Fluminense',2,2,'Empate'),
(6,2023,'2023-10-04 21:30:00','Beira Rio','Fluminense','Internacional',1,2,'Visitante'),
(7,2023,'2023-11-04 17:00:00','Maracana','Boca Juniors','Fluminense',1,2,'Local');

-- Vista simple con datos de jugadores
CREATE OR REPLACE VIEW v_DetallesJugador AS
SELECT
  J.idJugador,
  J.nombreJugador,
  J.apellidoJugador,
  J.posicion,
  J.equipoJugador,
  E.nombreEquipo AS nombreEquipo,
  P.nombrePais AS nacionalidad
FROM JUGADORES J
JOIN EQUIPOS E ON J.equipoJugador = E.nombreEquipo
JOIN PAISES P ON J.nacionalidad = P.nombrePais;

-- Vista de equipos agrupados por pais
CREATE OR REPLACE VIEW v_EquiposPorPaisConGroupBy AS
SELECT
  P.nombrePais,
  COUNT(E.idEquipo) AS cantidadEquipos
FROM EQUIPOS E
JOIN PAISES P ON E.paisEquipo = P.nombrePais
GROUP BY P.nombrePais;

-- Vista de Jugadores de nacionalidad argentina
CREATE OR REPLACE VIEW v_JugadoresArgentinos AS
SELECT
  nombreJugador,
  apellidoJugador,
  equipoJugador
FROM JUGADORES
WHERE nacionalidad = 'Argentina';

-- Vista de Jugadores Diestros con al menos un Gol
CREATE OR REPLACE VIEW v_JugadoresDiestrosConGol AS
SELECT
  nombreJugador,
  apellidoJugador,
  nacionalidad,
  equipoJugador,
  posicion,
  pegada,
  golesJugador,
  amonestaciones,
  expulsiones
FROM JUGADORES
WHERE pegada = 'DIESTRO' AND golesJugador > 0;

-- Vista de Equipos Ordenados por Cantidad de Socios Descendente
CREATE VIEW v_EquiposPorSocios AS
SELECT
  idEquipo,
  nombreEquipo,
  paisEquipo,
  colorEquipo,
  sociosEquipo,
  estadioEquipo
FROM EQUIPOS
ORDER BY sociosEquipo DESC;

/*Primera funcion que me permite obtener la cantidad de goles de un equipo en un torneo */

DROP FUNCTION IF EXISTS FN_ObtenerGolesEquipoEnTorneo;
DELIMITER //
CREATE FUNCTION FN_ObtenerGolesEquipoEnTorneo(
    equipoNombre VARCHAR(50),
    torneoAnio INT
)

RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE totalGoles INT;
    
    SELECT SUM(CASE WHEN equipoLocal = equipoNombre THEN golesLocal ELSE golesVisitante END) 
    INTO totalGoles
    FROM PARTIDOS
    WHERE añoEdicion = torneoAnio 
        AND (equipoLocal = equipoNombre OR equipoVisitante = equipoNombre);
    
    RETURN totalGoles;
END //
DELIMITER ;

SELECT FN_ObtenerGolesEquipoEnTorneo('Boca Juniors', 2023) AS 'GolesBocaJuniors';

/*Segunda funcion que me permite obntener la nacionalidad de un jugador */

DROP FUNCTION IF EXISTS FN_ObtenerPaisJugador;
DELIMITER //
CREATE FUNCTION FN_ObtenerPaisJugador(
    jugadorNombre VARCHAR(50)
)
RETURNS VARCHAR(50)
DETERMINISTIC
BEGIN
    DECLARE paisNombre VARCHAR(50);
    
    SELECT nacionalidad INTO paisNombre
    FROM JUGADORES
  WHERE CONCAT(nombreJugador, ' ', apellidoJugador)= jugadorNombre;
    
    RETURN paisNombre;
END //
DELIMITER ;

SELECT FN_ObtenerPaisJugador('German Cano') AS 'PaisJugador';

-- PRIMER STORED PROCEDURE
DELIMITER //
CREATE PROCEDURE SP_OrdenarEquipos(
    IN campoOrden VARCHAR(50), -- Parámetro para indicar el campo de ordenamiento
    IN orden VARCHAR(4) -- Parámetro para indicar el orden (ASC o DESC)
)
BEGIN
    /*
     * Este stored procedure permite ordenar la tabla EQUIPOS
     * según un campo específico y en orden ascendente o descendente.
     */

    -- Construye la consulta dinámica utilizando los parámetros de entrada
    SET @query = CONCAT('SELECT * FROM EQUIPOS ORDER BY ', campoOrden, ' ', orden);

    -- Prepara y ejecuta la consulta
    PREPARE stmt FROM @query;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
END //
DELIMITER ;

-- Se ejecuta el SP y se pide ordenar la tabla según la columna sociosEquipo en forma ascendente
CALL SP_OrdenarEquipos('sociosEquipo', 'ASC');

-- Otra ejecución del SP puede ser pedir que ordene la tabla por orden alfabetico descentende según el nombre de equipo
CALL SP_OrdenarEquipos('nombreEquipo', 'DESC');


-- SEGUNDO STORE PROCEDURE
DELIMITER //
CREATE PROCEDURE SP_ObtenerGolesJugador(
    IN jugadorNombre VARCHAR(50), -- Parámetro de entrada: nombre del jugador
    OUT totalGoles INT -- Parámetro de salida: cantidad total de goles del jugador
)
BEGIN
    /*
     * Este procedimiento almacenado recibe el nombre de un jugador como parámetro de entrada
     * y devuelve la cantidad total de goles que ha marcado ese jugador como parámetro de salida.
    */

    -- Inicializar totalGoles en cero
    SET totalGoles = 0;

    -- Obtener la cantidad total de goles del jugador
    SELECT SUM(golesJugador) INTO totalGoles
    FROM JUGADORES
    WHERE CONCAT(nombreJugador, ' ', apellidoJugador) = jugadorNombre;
    
    
END //
DELIMITER ;

-- Llamar al procedimiento y mostrar el resultado
CALL SP_ObtenerGolesJugador('German Cano', @golesTotales);
SELECT @golesTotales AS 'GolesTotales';



DROP TABLE IF EXISTS LOG_AUDITORIA;
CREATE TABLE IF NOT EXISTS LOG_AUDITORIA
(
ID_LOG INT AUTO_INCREMENT,
NOMBRE_DE_ACCION VARCHAR (50),
NOMBRE_TABLA VARCHAR(50),
USUARIO VARCHAR(100),
FECHA_UPD_INS_DEL DATE,
PRIMARY KEY (ID_LOG)
);

DROP TABLE IF EXISTS LOG_AUDITORIA2;
CREATE TABLE IF NOT EXISTS LOG_AUDITORIA2
(
ID_LOG INT AUTO_INCREMENT,
NOMBREJUGADOR VARCHAR(50),
APELLIDOJUGADOR VARCHAR(50),
EQUIPOJUGADOR VARCHAR(50),
NOMBRE_DE_ACCION VARCHAR (50),
NOMBRE_TABLA VARCHAR(50),
USUARIO VARCHAR(100),
FECHA_UPD_INS_DEL DATE,
PRIMARY KEY (ID_LOG)
);

DROP TRIGGER IF EXISTS TRG_LOG_JUGADOR;
DELIMITER //
CREATE TRIGGER TRG_LOG_JUGADOR AFTER INSERT ON JUGADORES
FOR EACH ROW
BEGIN
INSERT INTO LOG_AUDITORIA (NOMBRE_DE_ACCION,NOMBRE_TABLA,USUARIO,FECHA_UPD_INS_DEL)
VALUES ('INSERT', 'JUGADOR', CURRENT_USER(),NOW());
END
// DELIMITER;

DROP TRIGGER IF EXISTS TRG_MODIF_JUGADOR;
DELIMITER //
CREATE TRIGGER TRG_MODIF_JUGADOR AFTER UPDATE ON JUGADORES
FOR EACH ROW
BEGIN
INSERT INTO LOG_AUDITORIA2 (nombreJugador, apellidoJugador, equipoJugador, NOMBRE_DE_ACCION,NOMBRE_TABLA,USUARIO,FECHA_UPD_INS_DEL)
VALUES (NEW.nombreJugador,NEW.apellidoJugador,NEW.equipoJugador,'UPDATE', 'JUGADOR', CURRENT_USER(),NOW());
END
// DELIMITER ;