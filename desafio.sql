
-- Creamos la base de datos

    CREATE DATABASE Desafio_Francisco_Moya_177;

-- Selecciono la base de datos

    \c Desafio_Francisco_Moya_177;

-- Creamos la tabla

    CREATE TABLE clients(
        id SERIAL PRIMARY KEY,
        email VARCHAR(50),
        client_name VARCHAR,
        phone VARCHAR(16),
        company VARCHAR(50),
        priority SMALLINT NOT NULL CHECK (priority >= 1 AND priority <= 10)
    );

-- Vemos las tablas creadas

    \dt

-- Comprobamos lo que queriamos

    SELECT * FROM clients;

-- Insertamos los datos

    INSERT INTO clients (email, client_name, phone, company, priority) VALUES ('francisco45@gmail.com', 'Francisco Valenzuela', '123456789', 'Google', 6),
    ('renato46@gmail.com', 'Renato Espinoza', '123456789', 'Gmail', 9),('alvaro47@gmail.com', 'Alvaro Castro', '123456789', 'Amazon', 7),
    ('rodrigo48@gmail.com', 'Rodrigo Espinola', '123456789', 'Microsoft', 8),('gaspar49@gmail.com', 'Gaspar Rodriguez', '123456789', 'Apple', 10);

-- Comprobamos nuevamente lo que queriamos

    SELECT * FROM clients;

-- Aquí seleccionamos los tres clientes de mayor prioridad

    SELECT * FROM clients ORDER BY priority DESC, id ASC LIMIT 3;

-- Aquí seleccionamos, de la tabla clientes, una prioridad o una empresa, de forma que el resultado devuelva 2 registros

    SELECT * FROM clients WHERE priority = 10 OR company = 'Gmail';

-- Salir de postgreSQL

    \q
