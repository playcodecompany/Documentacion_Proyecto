-- BASE DE DATOS ADAPTADA AL HTML/CSS DEL JUEGO "ANIMALDRAFT"

CREATE DATABASE IF NOT EXISTS AnimalDraftDB;
USE AnimalDraftDB;

-- TABLA: Jugador (usuarios que participan en el juego)
CREATE TABLE Jugador (
    id_jugador INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    correo VARCHAR(100) NOT NULL,
    contrasena VARCHAR(100) NOT NULL
);

-- TABLA: Partida (representa una partida/ronda de juego)
CREATE TABLE Partida (
    id_partida INT AUTO_INCREMENT PRIMARY KEY,
    fecha_inicio TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    estado ENUM('En curso', 'Finalizada') DEFAULT 'En curso'
);

-- TABLA: Jugador_Partida (quién jugó qué partida y cuánto puntuó)
CREATE TABLE Jugador_Partida (
    id_jugador_partida INT AUTO_INCREMENT PRIMARY KEY,
    id_jugador INT,
    id_partida INT,
    puntuacion INT DEFAULT 0,
    FOREIGN KEY (id_jugador) REFERENCES Jugador(id_jugador),
    FOREIGN KEY (id_partida) REFERENCES Partida(id_partida)
);

-- TABLA: Animal (cada ficha del juego, ej: león, mono, jirafa)
CREATE TABLE Animal (
    id_animal INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    color VARCHAR(20)
);

-- TABLA: Recinto (zonas del tablero donde se colocan animales)
CREATE TABLE Recinto (
    id_recinto INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    descripcion TEXT,
    restriccion TEXT
);

-- TABLA: Colocacion (registro de qué jugador coloca qué animal y dónde)
CREATE TABLE Colocacion (
    id_colocacion INT AUTO_INCREMENT PRIMARY KEY,
    id_jugador_partida INT,
    id_animal INT,
    id_recinto INT,
    turno INT,
    FOREIGN KEY (id_jugador_partida) REFERENCES Jugador_Partida(id_jugador_partida),
    FOREIGN KEY (id_animal) REFERENCES Animal(id_animal),
    FOREIGN KEY (id_recinto) REFERENCES Recinto(id_recinto)
);

-- TABLA: Dado (valor del dado por turno en una partida)
CREATE TABLE Dado (
    id_dado INT AUTO_INCREMENT PRIMARY KEY,
    id_partida INT,
    turno INT,
    valor VARCHAR(50),
    FOREIGN KEY (id_partida) REFERENCES Partida(id_partida)
);

-- TABLA: Ranking (datos finales de cada jugador)
CREATE TABLE Ranking (
    id_jugador INT PRIMARY KEY,
    partidas_jugadas INT DEFAULT 0,
    partidas_ganadas INT DEFAULT 0,
    puntos_totales INT DEFAULT 0,
    promedio_puntos DECIMAL(5,2) GENERATED ALWAYS AS (
        CASE 
            WHEN partidas_jugadas > 0 THEN puntos_totales / partidas_jugadas
            ELSE 0
        END
    ) STORED,
    FOREIGN KEY (id_jugador) REFERENCES Jugador(id_jugador)
);
