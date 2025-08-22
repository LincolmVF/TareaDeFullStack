-- Crear tabla alumnos
CREATE TABLE alumnos (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL
);

-- Crear tabla cursos
CREATE TABLE cursos (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL
);

-- Crear tabla matrículas
CREATE TABLE matriculas (
  id_alumno INT NOT NULL,
  id_curso INT NOT NULL,
  FOREIGN KEY (id_alumno) REFERENCES alumnos(id),
  FOREIGN KEY (id_curso) REFERENCES cursos(id)
);

-- Insertar datos de ejemplo
INSERT INTO alumnos (nombre) VALUES ('Ana Torres');
INSERT INTO cursos (nombre) VALUES ('Base de Datos Avanzadas');
INSERT INTO matriculas (id_alumno, id_curso) VALUES (1,1);

-- Consultar alumnos y sus cursos
SELECT a.nombre AS alumno, c.nombre AS curso
FROM alumnos a
JOIN matriculas m ON a.id = m.id_alumno
JOIN cursos c ON c.id = m.id_curso;
