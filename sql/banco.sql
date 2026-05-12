CREATE DATABASE IF NOT EXISTS aqualert
  CHARACTER SET utf8mb4
  COLLATE utf8mb4_general_ci;

USE aqualert;

CREATE TABLE IF NOT EXISTS usuario (
  id_usuario        INT AUTO_INCREMENT PRIMARY KEY,
  nome       VARCHAR(100) NOT NULL,
  email      VARCHAR(100) NOT NULL UNIQUE,
  foto_usuario varchar(255),
  telefone VARCHAR(15) NOT NULL,
  senha      VARCHAR(255) NOT NULL,
  criado_em  DATETIME DEFAULT CURRENT_TIMESTAMP,
  tipo enum ('user','adm','gestor') default 'user'
);


INSERT INTO usuario (nome, email, senha, telefone) VALUES (
  'Usuario',
  'user@email',
  '$2y$10$Wiyq0IuO9JEW2K5rakVjDu/SUE/ZCkdiw0dWs.4ZNKy7U/hrLvFxa',
  '4799999999999'
);
INSERT INTO usuario (nome, email, senha, tipo, telefone) VALUES (
  'Administrador',
  'adm@email',
  '$2y$10$Wiyq0IuO9JEW2K5rakVjDu/SUE/ZCkdiw0dWs.4ZNKy7U/hrLvFxa',
  'adm',
  '4799999999999'
);
INSERT INTO usuario (nome, email, senha, tipo, telefone) VALUES (
  'Gestor',
  'gstr@email',
  '$2y$10$Wiyq0IuO9JEW2K5rakVjDu/SUE/ZCkdiw0dWs.4ZNKy7U/hrLvFxa',
  'gestor',
  '4799999999999'
);

-- Usuarios teste
-- Senha: 123456