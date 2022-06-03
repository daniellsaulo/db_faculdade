CREATE SCHEMA db_faculdade;

USE db_faculdade;

CREATE TABLE IF NOT EXISTS departamento(
	cod_departamento INT(4) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome_departamento CHAR(20)
);

CREATE TABLE IF NOT EXISTS tipo_logradouro(
	cod_tipo_logradouro INT(4) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    tipo_logradouro CHAR(11)
);

CREATE TABLE IF NOT EXISTS endereco(
	cod_endereco INT(4) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome_rua CHAR(50),
    numero_rua INT(4),
    complemento CHAR(20),
    CEP CHAR(8),
    fk_cod_tipo_logradouro INT(4),
    FOREIGN KEY (fk_cod_tipo_logradouro) REFERENCES tipo_logradouro(cod_tipo_logradouro)
);