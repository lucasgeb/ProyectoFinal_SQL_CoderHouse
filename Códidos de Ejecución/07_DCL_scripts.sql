
-- Creacóin del usuario1 que tiene privilegios de solo lectura
CREATE USER 'usuarioUno'@'localhost' IDENTIFIED BY 'pass123';

-- Otorgar permisos de solo lectura en todas las tablas
GRANT SELECT ON COPA_LIBERTADORES.* TO 'usuarioUno'@'localhost';

-- Denegar permisos de eliminación en todas las tablas
REVOKE DELETE ON COPA_LIBERTADORES.* FROM 'usuarioUno'@'localhost';


-- Creación del usuario2 con mayores permisos
CREATE USER 'usuarioDos'@'localhost' IDENTIFIED BY 'pass321';

-- Otorgar permisos de lectura, inserción y modificación en todas las tablas
GRANT SELECT, INSERT, UPDATE ON COPA_LIBERTADORES.* TO 'usuarioDos'@'localhost';

-- Denegar permisos de eliminación en todas las tablas
REVOKE DELETE ON COPA_LIBERTADORES.* FROM 'usuarioDos'@'localhost';