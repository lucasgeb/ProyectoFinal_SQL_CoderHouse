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