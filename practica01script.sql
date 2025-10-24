CREATE DATABASE practica;
USE practica;
CREATE TABLE arbol (
    id INT AUTO_INCREMENT PRIMARY KEY,         -- Llave primaria
    nombre_comun VARCHAR(100) NOT NULL,        -- Texto
    tipo_flor VARCHAR(100),                    -- Texto
    dureza_madera VARCHAR(50),                 -- Texto
    altura_promedio DECIMAL(5,2),              -- Numérico (metros)
    ruta_imagen VARCHAR(1024)                   -- Ruta de la imagen
);

INSERT INTO arbol (nombre_comun, tipo_flor, dureza_madera, altura_promedio, ruta_imagen)
VALUES
('Roble', 'No tiene', 'Dura', 25.5, 'https://media.istockphoto.com/id/183807813/es/foto/oak-tree.jpg?s=2048x2048&w=is&k=20&c=_AWeiGdtsHvcIEs2l_IvzLYyC04VRBVVvhxcvk23ER0='),
('Cedro', 'Pequeña amarilla', 'Dura', 20.0, 'https://thumbs.dreamstime.com/b/%C3%A1rbol-de-cedro-aislado-46771243.jpg?w=576'),
('Pino', 'No tiene', 'Blanda', 30.2, 'https://thumbs.dreamstime.com/z/%C3%A1rbol-de-pino-10688089.jpg?ct=jpeg'),
('Jacaranda', 'Morada', 'Media', 18.7, 'https://media.istockphoto.com/id/172936359/es/foto/p%C3%BArpura-cerezos-en-flor-en-jacarand%C3%A1-sobre-fondo-blanco.jpg?s=2048x2048&w=is&k=20&c=eeaIN6Fc3K3JTD0Up7r3nehYuKaOKmRcWR251TqLJqg='),
('Laurel', 'Blanca', 'Media', 12.4, 'https://www.arbolitos.es/image.axd?w=520&src=/Docs/Arbolitos/laurel_arbol.jpg');


TRUNCATE TABLE arbol

CREATE USER 'usuario_practica'@'%' IDENTIFIED BY 'la_Clave';
GRANT ALL PRIVILEGES ON practica.* TO 'usuario_practica'@'%';
FLUSH PRIVILEGES;


select * from arbol