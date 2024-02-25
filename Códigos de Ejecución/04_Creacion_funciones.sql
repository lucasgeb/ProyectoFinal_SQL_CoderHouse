/*Esta función permite obtener la cantidad de goles de un equipo en un torneo */

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

/*Esta Función permite obntener la nacionalidad de un jugador */

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

/* Esta función devuelve una lista de equipos que pertenecen a un país específico */
DROP FUNCTION IF EXISTS FN_ObtenerEquiposPorPais;
DELIMITER //
CREATE FUNCTION FN_ObtenerEquiposPorPais(
    paisNombre VARCHAR(50)
)
RETURNS VARCHAR(500)
DETERMINISTIC
BEGIN
    DECLARE equiposLista VARCHAR(500);
    
    SELECT GROUP_CONCAT(nombreEquipo)
    INTO equiposLista
    FROM EQUIPOS
    WHERE paisEquipo = paisNombre;
    
    RETURN equiposLista;
END //
DELIMITER ;

/*Esta función devuelve una lista de jugadores que pertenecen a un equipo específico.*/

DROP FUNCTION IF EXISTS FN_ObtenerJugadoresPorEquipo;
DELIMITER //
CREATE FUNCTION FN_ObtenerJugadoresPorEquipo(
    equipoNombre VARCHAR(50)
)
RETURNS VARCHAR(500)
DETERMINISTIC
BEGIN
    DECLARE jugadoresLista VARCHAR(500);
    
    SELECT GROUP_CONCAT(CONCAT(nombreJugador, ' ', apellidoJugador))
    INTO jugadoresLista
    FROM JUGADORES
    WHERE equipoJugador = equipoNombre;
    
    RETURN jugadoresLista;
END //
DELIMITER ;

/*Esta función devuelve una lista de partidos en los que participó un equipo específico, ya sea como local o visitante.*/

DROP FUNCTION IF EXISTS FN_ObtenerPartidosPorEquipo;
DELIMITER //
CREATE FUNCTION FN_ObtenerPartidosPorEquipo(
    equipoNombre VARCHAR(50)
)
RETURNS VARCHAR(1000)
DETERMINISTIC
BEGIN
    DECLARE partidosLista VARCHAR(1000);
    
    SELECT GROUP_CONCAT(
        CONCAT('Fecha: ', fecha, ', Estadio: ', estadio, ', Local: ', equipoLocal, ', Visitante: ', equipoVisitante, ', Goles Local: ', golesLocal, ', Goles Visitante: ', golesVisitante, ', Resultado: ', resultado) SEPARATOR '\n')
    INTO partidosLista
    FROM PARTIDOS
    WHERE equipoLocal = equipoNombre OR equipoVisitante = equipoNombre;
    
    RETURN partidosLista;
END //
DELIMITER ;

/*Esta función devuelve la cantidad total de goles marcados en una fase específica del torneo.*/

DROP FUNCTION IF EXISTS FN_ObtenerGolesPorFase;
DELIMITER //
CREATE FUNCTION FN_ObtenerGolesPorFase(
    faseNombre VARCHAR(20)
)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE totalGoles INT;
    
    SELECT SUM(golesLocal + golesVisitante)
    INTO totalGoles
    FROM PARTIDOS
    WHERE fase = faseNombre;
    
    RETURN totalGoles;
END //
DELIMITER ;

/*Esta función devuelve la edad promedio de los jugadores de un equipo específico.*/

DROP FUNCTION IF EXISTS FN_ObtenerEdadPromedioEquipo;
DELIMITER //
CREATE FUNCTION FN_ObtenerEdadPromedioEquipo(
    equipoNombre VARCHAR(50)
)
RETURNS DECIMAL(5,2)
DETERMINISTIC
BEGIN
    DECLARE edadPromedio DECIMAL(5,2);
    
    SELECT AVG(edad)
    INTO edadPromedio
    FROM JUGADORES
    WHERE equipoJugador = equipoNombre;
    
    RETURN edadPromedio;
END //
DELIMITER ;
