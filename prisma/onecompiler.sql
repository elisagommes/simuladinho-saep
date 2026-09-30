CREATE DATABASE IF NOT EXISTS saep_eventos
  CHARACTER SET utf8mb4
  COLLATE utf8mb4_unicode_ci;

USE saep_eventos;

CREATE TABLE Evento (
  id INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(150) NOT NULL,
  descricao TEXT NOT NULL,
  local VARCHAR(150) NOT NULL,
  data DATETIME NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE Palestrante (
  id INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(150) NOT NULL,
  email VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE Evento_Palestrante (
  evento_id INT NOT NULL,
  palestrante_id INT NOT NULL,
  PRIMARY KEY (evento_id, palestrante_id),
  CONSTRAINT fk_evento_palestrante_evento
    FOREIGN KEY (evento_id) REFERENCES Evento (id)
    ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT fk_evento_palestrante_palestrante
    FOREIGN KEY (palestrante_id) REFERENCES Palestrante (id)
    ON DELETE CASCADE ON UPDATE CASCADE
);
