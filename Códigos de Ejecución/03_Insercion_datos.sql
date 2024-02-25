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
(3,'Flamengo','Brasil','Negro y Rojo',145000,'Maracana'),
(4,'Nacional','Uruguay','Azul y Blanco',130800,'Gran Parque Central'),
(5,'Palmeiras','Brasil','Verde',135000,'Allianz Parque'),
(6,'Internacional','Brasil','Blanco y Rojo',75000,'Beira Rio'),
(7,'Atletico Paranaense','Brasil','Negro y Rojo',43150,'Arena de Baixada'),
(8,'Colo Colo','Chile','Blanco y Rojo',86000,'Monumental'),
(9,'Independiente del Valle','Ecuador','Blanco y Negro',12000,'Banco Guayaquil'),
(10,'Libertad','Paraguay','Blanco y Negro',12000,'Tigo la Huerta'),
(11,'Olimpia','Paraguay','Negro y Blanco',49000,'Manuel Ferreira'),
(12,'Bolivar','Bolivia','Celeste',7000,'Libertador Simon Bolivar'),
(13,'Racing Club','Argentina','Celeste y Blanco',90000,'Presidente Peron'),
(14,'Fluminense','Brasil','Verde y Bordo',89333,'Maracana'),
(15,'The Strongest','Bolivia','Amarillo y Negro',16000,'Hernando Siles'),
(16,'Melgar','Peru','Rojo y Negro',56433,'Monumental UNSA'),
(17,'Alianza Lima','Peru','Blanco y Negro',31685,'Alejandro Villanueva'),
(18,'Argentinos Juniors','Argentina','Blanco y Rojo',20221,'Diego Armando Maradona'),
(19,'Metropolitanos','Venezuela','Violeta',8600,'Olimpico de la UCV'),
(20,'Aucas','Ecuador','Rojo y Amarillo',18799,'Gonzalo Pozo Ripalda'),
(21,'Monagas','Venezuela','Azul y Rojo',45632,'Monumental de Maturin'),
(22,'Liverpool','Uruguay','Azul y Negro',8500,'Belvedere'),
(23,'Deportivo Pereira','Colombia','Rojo y Amarillo',25630,'Hernan Ramirez Villegas'),
(24,'Deportivo Ñublense','Chile','Rojo',11300,'Bicentenario Municipal'),
(25,'Patronato','Argentina','Rojo y Negro',17890,'Presbitero Bartolome Grelia'),
(26,'Sporting Cristal','Peru','Celeste',11600,'Alberto Gallardo'),
(27,'Cerro Porteño','Paraguay','Azul y Rojo',41500,'General Pablo Rojas'),
(28,'Atletico Mineiro','Brasil','Blanco y Negro',36980,'Arena MRV'),
(29,'Independiente Medellin','Colombia','Rojo y Azul',46000,'Atanasio Girardot');


INSERT INTO torneos(idTorneo, añoEdicion,equipoCampeon) VALUES 
(1,2018,'River Plate'),
(2,2019,'Flamengo'),
(3,2020,'Palmeiras'),
(4,2021,'Palmeiras'),
(5,2022,'Flamengo'),
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
(10,'Enner','Valencia','Ecuador',34,'Internacional','Delantero','Diestro',4,0,0),
(11,'Samuel', 'Xavier', 'Brasil', 33, 'Fluminense', 'Defensor', 'DIESTRO', 0, 2, 1),
(12,'André', 'Da Costa', 'Brasil', 22, 'Fluminense', 'Mediocampista', 'DIESTRO', 1, 3, 0),
(13,'Paulo', 'Ganso', 'Brasil', 34, 'Fluminense', 'Mediocampista', 'ZURDO', 6, 6, 0),
(14,'Mantheus','Martinelli', 'Brasil', 22, 'Fluminense', 'Mediocampista', 'DIESTRO', 0, 5, 0),
(15,'Nino', 'Mota', 'Brasil', 26, 'Fluminense', 'Defensor', 'DIESTRO', 1, 6, 0),
(16,'Ronnie','Fernandez', 'Chile', 33, 'Bolivar', 'Delantero', 'DIESTRO', 2, 5, 0),
(17,'Francisco','Dacosta', 'Brasil', 28, 'Bolivar', 'Delantero', 'DIESTRO', 0, 1, 0),
(18,'Patricio','Rodriguez','Argentina', 33, 'Bolivar', 'Delantero', 'DIESTRO', 3, 2, 0),
(19,'Gabriel','Villamil', 'Bolivia', 22, 'Bolivar', 'Mediocampista', 'DIESTRO', 2, 5, 0),
(20,'Bruno','Savio', 'Brasil', 29, 'Bolivar', 'Mediocampista', 'DIESTRO', 0, 1, 0),
(21,'Diego','Bejarano', 'Bolivia', 32, 'Bolivar', 'Defensor', 'DIESTRO', 4, 7, 0),
(22,'Rene','Gaucho', 'Brasil', 31, 'Internacional', 'Defensor', 'ZURDO', 0, 3, 0),
(23,'Nahuel','Hernandez', 'Colombia', 26, 'Internacional', 'Defensor', 'ZURDO', 0, 1, 0),
(24,'Gabriel','Mercado', 'Argentina', 36, 'Internacional', 'Defensor', 'DIESTRO', 5, 11, 1),
(25,'Alan','Patrick', 'Brasil', 32, 'Internacional', 'Mediocampista', 'DIESTRO', 6, 3, 0),
(26,'Carlos','Aranguiz', 'Chile', 34, 'Internacional', 'Mediocampista', 'DIESTRO', 1, 4, 0),
(27,'Gabriel','Hauche', 'Argentina', 37, 'Racing Club', 'Delantero', 'DIESTRO', 3, 4, 1),
(28,'Maxi','Romero', 'Argentina', 25, 'Racing Club', 'Delantero', 'DIESTRO', 1, 0, 0),
(29,'Agustin','Ojeda', 'Argentina', 19, 'Racing Club', 'Delantero', 'DIESTRO', 1, 0, 0),
(30,'Anibal','Moreno', 'Argentina', 24, 'Racing Club', 'Mediocampista', 'DIESTRO', 1, 1, 0),
(31,'Jonatan','Gomez', 'Argentina', 34, 'Racing Club', 'Mediocampista', 'DIESTRO', 4, 6, 0),
(32,'Tobías','Rubio', 'Argentina', 19, 'Racing Club', 'Defensor', 'DIESTRO', 0, 2, 0),
(33,'Arley','Rodriguez', 'Colombia', 31, 'Deportivo Pereira', 'Delantero', 'DIESTRO', 1, 6, 0),
(34,'Angelo','Rodriguez', 'Colombia', 34, 'Deportivo Pereira', 'Delantero', 'DIESTRO', 1, 6, 0),
(35,'Maicol','Medica', 'Colombia', 26, 'Deportivo Pereira', 'Mediocampista', 'ZURDO', 0, 3, 1),
(36,'Joan','Quinteros', 'Colombia', 28, 'Deportivo Pereira', 'Defensor', 'DIESTRO', 0, 3, 1),
(37,'Eduardo','Moreno', 'Colombia', 22, 'Deportivo Pereira', 'Defensor', 'DIESTRO', 0, 1, 0),
(38,'Juan Pablo','Zuluaga', 'Colombia', 30, 'Deportivo Pereira', 'Mediocampista', 'DIESTRO', 0, 1, 0),
(39,'Weverton','Da Silva', 'Brasil', 36, 'Palmeiras', 'Mediocampista', 'DIESTRO', 0, 5, 0),
(40,'Marcos','Rocha', 'Brasil', 35, 'Palmeiras', 'Defensor', 'DIESTRO', 1, 1, 0),
(41,'Gustavo','Portillo', 'Paraguay', 30, 'Palmeiras', 'Defensor', 'DIESTRO', 3, 4, 0),
(42,'Gabriel','Menino', 'Brasil', 23, 'Palmeiras', 'Mediocampista', 'DIESTRO', 0, 3, 0),
(43,'Ze','Rafael', 'Brasil', 30, 'Palmeiras', 'Mediocampista', 'DIESTRO', 0, 1, 0),
(44,'Joaquin','Piquerez', 'Uruguay', 25, 'Palmeiras', 'Defensor', 'ZURDO', 3, 1, 0);


INSERT INTO partidos(idPartido, añoEdicion, fecha, estadio, fase, equipoVisitante, equipoLocal, golesVisitante, golesLocal, resultado) VALUES
(1,2023,'2023-08-22 19:00:00','Libertador Simon Bolivar','Cuarto de final','Internacional','Bolivar',1,0,'Visitante'),
(2,2023,'2023-09-23 21:30:00','Hernan Ramirez Villegas','Cuarto de final','Palmeiras','Deportivo Pereira',4,0,'Local'),
(3,2023,'2023-08-23 21:30:00','Alberto J Armando','Cuarto de final','Racing Club','Boca Juniors',0,0,'Empate'),
(4,2023,'2023-08-24 21:30:00','Maracana','Cuarto de final','Olimpia','Fluminense',0,2,'Local'),
(5,2023,'2023-08-29 19:00:00','Beira Rio','Cuarto de final','Bolivar','Internacional',0,2,'Local'),
(6,2023,'2023-08-30 21:30:00','Presidente Peron','Cuarto de final','Boca Juniors','Racing Club',0,0,'Empate'),
(7,2023,'2023-09-30 21:30:00','Allianz Parque','Cuarto de final','Deportivo Pereira','Palmeiras',0,0,'Empate'),
(8,2023,'2023-08-31 21:30:00','Manuel Ferreira','Cuarto de final','Fluminense','Olimpia',3,1,'Visitante'),
(9,2023,'2023-09-27 21:30:00','Maracana','Semifinal','Internacional','Fluminense',2,2,'Empate'),
(10,2023,'2023-09-28 21:30:00','Alberto J Armando','Semifinal','Palmeiras','Boca Juniors',0,0,'Empate'),
(11,2023,'2023-10-04 21:30:00','Beira Rio','Semifinal','Fluminense','Internacional',2,1,'Visitante'),
(12,2023,'2023-10-05 21:30:00','Allianz Parque','Semifinal','Boca Juniors','Palmeiras',1,1,'Empate'),
(13,2023,'2023-11-04 17:00:00','Maracana','Final','Boca Juniors','Fluminense',1,2,'Local');



