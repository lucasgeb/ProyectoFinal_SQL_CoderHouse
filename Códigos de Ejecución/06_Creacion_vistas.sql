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