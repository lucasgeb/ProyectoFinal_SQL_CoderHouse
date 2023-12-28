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


