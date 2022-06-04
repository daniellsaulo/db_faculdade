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
    fk_cod_tipo_logradouro INT(4) NOT NULL,
    FOREIGN KEY (fk_cod_tipo_logradouro) REFERENCES tipo_logradouro(cod_tipo_logradouro)
);

CREATE TABLE IF NOT EXISTS tipo_telefone(
	cod_tipo_telefone INT(4) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    tipo_telefone CHAR(8)
);

CREATE TABLE IF NOT EXISTS telefone(
	cod_telefone INT(4) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    num_telefone CHAR(20),
    fk_cod_tipo_telefone INT(4) NOT NULL,
    FOREIGN KEY (fk_cod_tipo_telefone) REFERENCES tipo_telefone(cod_tipo_telefone)
);

CREATE TABLE IF NOT EXISTS disciplina(
	cod_disciplina INT(4) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome_disciplina CHAR(20),
    carga_horaria INT(4),
    descricao CHAR(50),
    n_alunos INT(4),
    fk_cod_departamento INT(4) NOT NULL,
    FOREIGN KEY (fk_cod_departamento) REFERENCES departamento(cod_departamento)
);

CREATE TABLE IF NOT EXISTS professor(
	cod_professor INT(4) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome_professor CHAR(20),
    sobrenome_professor CHAR(50),
    status BOOLEAN,
    fk_cod_departamento INT(4) NOT NULL,
    FOREIGN KEY (fk_cod_departamento) REFERENCES departamento(cod_departamento)
);

CREATE TABLE IF NOT EXISTS disciplina_professor(
	fk_cod_professor INT(4) NOT NULL,
    fk_cod_disciplina INT(4) NOT NULL,
    PRIMARY KEY (fk_cod_professor, fk_cod_disciplina),
    FOREIGN KEY (fk_cod_professor) REFERENCES professor(cod_professor),
    FOREIGN KEY (fk_cod_disciplina) REFERENCES disciplina(cod_disciplina)
);

CREATE TABLE IF NOT EXISTS curso(
	cod_curso INT(4) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome_curso CHAR(20),
    fk_cod_departamento INT(4) NOT NULL,
    FOREIGN KEY (fk_cod_departamento) REFERENCES departamento(cod_departamento)
);

CREATE TABLE IF NOT EXISTS curso_disciplina(
	fk_cod_curso INT(4) NOT NULL,
    fk_cod_disciplina INT(4) NOT NULL,
    PRIMARY KEY (fk_cod_curso, fk_cod_disciplina),
    FOREIGN KEY (fk_cod_curso) REFERENCES curso(cod_curso),
    FOREIGN KEY (fk_cod_disciplina) REFERENCES disciplina(cod_disciplina)
);

CREATE TABLE IF NOT EXISTS turma(
	cod_turma INT(4) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    periodo CHAR(8),
    num_alunos INT(4),
    dt_inicio DATE,
    dt_fim DATE,
    fk_cod_curso INT(4) NOT NULL,
    FOREIGN KEY (fk_cod_curso) REFERENCES curso(cod_curso)
);

CREATE TABLE aluno(
	RA INT(4) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome_aluno CHAR(10),
    sobrenome_aluno CHAR(25),
    CPF CHAR(11),
    status BOOLEAN,
    sexo CHAR(1),
    nome_pai CHAR(50),
    nome_mae CHAR(50),
    email CHAR(50),
    whatsapp CHAR(20),
    fk_cod_curso INT(4) NOT NULL,
    fk_cod_turma INT(4) NOT NULL,
    fk_cod_endereco INT(4) NOT NULL,
    FOREIGN KEY (fk_cod_curso) REFERENCES curso(cod_curso),
    FOREIGN KEY (fk_cod_turma) REFERENCES turma(cod_turma),
    FOREIGN KEY (fk_cod_endereco) REFERENCES endereco(cod_endereco)
);

CREATE TABLE IF NOT EXISTS telefone_aluno(
	cod_tel_aluno INT(4) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    fk_aluno_RA INT (4) NOT NULL,
    fk_cod_telefone INT(4) NOT NULL,
    FOREIGN KEY (fk_aluno_RA) REFERENCES aluno(RA),
    FOREIGN KEY (fk_cod_telefone) REFERENCES telefone(cod_telefone)
);

CREATE TABLE IF NOT EXISTS historico(
	cod_historico INT(4) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    dt_inicio DATE,
    dt_fim DATE,
    fk_RA INT(4) NOT NULL,
    FOREIGN KEY (fk_RA) REFERENCES aluno(RA)
);

CREATE TABLE IF NOT EXISTS disciplina_historico(
	fk_cod_disciplina INT(4),
    fk_cod_historico INT(4),
    nota FLOAT(4,2),
    frequencia INT(4),
    PRIMARY KEY (fk_cod_disciplina, fk_cod_historico),
    FOREIGN KEY (fk_cod_disciplina) REFERENCES disciplina(cod_disciplina),
    FOREIGN KEY (fk_cod_historico) REFERENCES historico(cod_historico)
);

CREATE TABLE IF NOT EXISTS aluno_disciplina(
	fk_cod_disciplina INT(4),
    fk_RA INT(4),
    PRIMARY KEY (fk_cod_disciplina, fk_RA),
    FOREIGN KEY (fk_cod_disciplina) REFERENCES disciplina(cod_disciplina),
    FOREIGN KEY (fk_RA) REFERENCES aluno(RA)
);