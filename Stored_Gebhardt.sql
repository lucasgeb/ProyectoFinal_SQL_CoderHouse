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
CALL OrdenarEquipos('sociosEquipo', 'ASC');

-- Otra ejecución del SP puede ser pedir que ordene la tabla por orden alfabetico descentende según el nombre de equipo
CALL OrdenarEquipos('nombreEquipo', 'DESC');


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