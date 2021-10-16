CREATE TABLE usuarios(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(50) UNIQUE NOT NULL
);
CREATE TABLE nota(
    id INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(100) NOT NULL,
    fecha_de_creacion DATETIME NOT NULL,
    fecha_ultima_modificacion DATETIME,
    descripcion VARCHAR(250) NOT NULL,
    protegida TINYINT,
    usuarioId INT NOT NULL,
    FOREIGN KEY (usuarioId) REFERENCES usuarios (id)

);
CREATE TABLE categoria(
    id INT PRIMARY KEY AUTO_INCREMENT,
    tipo VARCHAR(100) NOT NULL
);
CREATE TABLE nota_categoria(
    id INT PRIMARY KEY AUTO_INCREMENT,
    categoriaId INT NOT NULL,
    FOREIGN KEY (categoriaId) REFERENCES categoria (id),
    notaId INT NOT NULL,
    FOREIGN KEY (notaId) REFERENCES nota (id)
);
-- carga de usuarios
INSERT INTO usuarios
VALUES (default, "joaquin","jpadin@hotmail.com"
);
INSERT INTO usuarios
VALUES (default, "carlos","carlos@gmail.com"
);
INSERT INTO usuarios
VALUES (default,"pedro","pmartinez@gmail.com"),(default,"juan","jgonzalez@gmail.com"),(default,"felipe","framos@gmail.com"),(default,"pablo","pbarrientos@gmail.com"),(default,"ramon","rgalup@gmail.com"),(default,"sara","svaldivieso@gmail.com"),
(default,"juan","jyacuzzi@gmail.com"),(default,"fatima","falvarez@gmail.com");
-- carga de notas
INSERT INTO nota
VALUES (default, "farmacia", '2021-01-20', '2021-02-28', "comprar el laxante", 0, 2);
INSERT INTO nota
VALUES (default, "supermercado", '2021-03-15', '2021-04-28', "asado", 0, 3);
INSERT INTO nota
VALUES (default, "Banco", '2018-01-20', '2021-07-28', "pedir chequera", 1, 13),(default, "tareas", '2018-06-20', '2021-07-28', "cortar el cesped", 1, 14),
(default, "lavar el auto", '2018-01-20', '2021-07-28', "con las cubiertas", 1, 16),(default, "comprar el diario", '2018-01-20', '2021-07-28', "LANACION", 1, 17),
(default, "Ir al cine", '2021-01-20', '2021-07-28', "Una de terror", 1, 18),(default, "Hacer el CV", '2018-01-20', '2021-07-28', "buscar trabajo", 0, 19),
(default, "Llevar a los chicos al medica", '2018-01-20', '2021-07-28', "pediatra", 0, 20),(default, "hacer curso DH", '2018-01-20', '2021-07-28', "Renunciar", 0, 15);
--carga categorias
INSERT into categoria
VALUES(default, "musica"),(default, "compras"),(default,"tramites"),(default,"tareas pendientes"),(default,"colegio"),(default,"peliculas"),(default, "materias"),(default,"libros"),(default,"prode mundial"),(default,"casamiento");
--carga nota_categoria
INSERT INTO nota_categoria
VALUES(default,1,9),(default,2,10),(default,2,10),(default,3,11),(default,4,12),(default,5,13),(default,6,14),(default,7,15),(default,8,16),(default,9,17),(default,10,18)