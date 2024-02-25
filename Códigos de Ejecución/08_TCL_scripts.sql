
SELECT @@autocommit;

SET @@autocommit = 0;

-- Utilizo la tabla PARTIDOS para el primer ejemplo
-- Iniciar la transacción
START TRANSACTION;

-- Realizar las modificaciones necesarias en la tabla PARTIDOS
-- (Por ejemplo, eliminar un registro)
DELETE FROM PARTIDOS WHERE idPartido = 1;

-- Verificar los resultados antes de confirmar o revertir la transacción
SELECT * FROM PARTIDOS;

-- Comentar la siguiente línea para evitar el rollback automático
-- ROLLBACK;

-- Comentar la siguiente línea para confirmar los cambios en la base de datos
-- COMMIT;


-- Utilizo la tabla JUGADORES para el segundo ejemplo

-- Iniciar la transacción
START TRANSACTION;

-- Insertar registros en la tabla JUGADORES
INSERT INTO JUGADORES (nombreJugador, apellidoJugador, nacionalidad, edad, equipoJugador, posicion, pegada, golesJugador, amonestaciones, expulsiones)
VALUES
  ('Luis', 'Advindula', 'Peru', 33, 'Boca Juniors', 'Defensor', 'DIESTRO', 2, 1, 0),
  ('Dario', 'Benedetto', 'Argentina', 33, 'Boca Juniors', 'Delantero', 'DIESTRO', 0, 2, 0),
  ('Jorman', 'Campuzano', 'Colombia', 25, 'Boca Juniors', 'Mediocampista', 'DIESTRO', 0, 0, 0),
  ('Frank', 'Fabra', 'Colombia', 30, 'Boca Juniors', 'Defensor', 'ZURDO', 0, 2, 1);
  -- Se agrega un savepoint después de la inserción #4
	SAVEPOINT after_insert_4;
 
  INSERT INTO JUGADORES (nombreJugador, apellidoJugador, nacionalidad, edad, equipoJugador, posicion, pegada, golesJugador, amonestaciones, expulsiones)
VALUES  
  ('Marcelo', 'Vieira', 'Brasil', 35, 'Fluminense', 'Defensor', 'ZURDO', 1, 5, 0),
  ('Marlon', 'Santos', 'Brasil', 28, 'Fluminense', 'Defensor', 'ZURDO', 1, 1, 0),
  ('Paulo', 'Ganso', 'Brasil', 34, 'Fluminense', 'Mediocampista', 'DIESTRO', 0, 0, 0),
  ('Felipe', 'Melo', 'Brasil', 40, 'Fluminense', 'Defensor', 'DIESTRO', 1,2, 1);
-- Se agrega un savepoint después de la inserción #8
	SAVEPOINT after_insert_8;

-- Verificar los resultados antes de confirmar o revertir la transacción
SELECT * FROM JUGADORES;

-- Comentar la siguiente línea para eliminar el savepoint después de la inserción #4
ROLLBACK TO after_insert_4;

-- COMMIT; -- Comentar esta línea para evitar confirmar la transacción

-- ROLLBACK; -- Comentar esta línea para evitar revertir la transacción completamente


