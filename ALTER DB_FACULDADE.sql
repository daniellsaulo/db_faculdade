USE db_faculdade;

ALTER TABLE departamento 
	CHANGE nome_departamento nome_departamento CHAR(20) NOT NULL;

ALTER TABLE professor
	CHANGE nome_professor nome_professor CHAR(50) NOT NULL,
	CHANGE sobrenome_professor sobrenome_professor CHAR(50) NOT NULL;

ALTER TABLE curso
	CHANGE fk_cod_departamento fk_cod_departamento INT(4);

ALTER TABLE turma
	CHANGE fk_cod_curso fk_cod_curso INT(4);

ALTER TABLE disciplina
	CHANGE carga_horaria carga_horaria INT(4) NOT NULL,
	CHANGE n_alunos num_alunos INT(4) NOT NULL;

ALTER TABLE tipo_telefone
	CHANGE cod_tipo_telefone cod_tipo INT(4) AUTO_INCREMENT;

ALTER TABLE telefone
	CHANGE fk_cod_tipo_telefone fk_cod_tipo INT(4) NOT NULL;

ALTER TABLE endereco
	CHANGE nome_rua nome_rua CHAR(50) NOT NULL,
	CHANGE numero_rua numero_rua INT(4) NOT NULL,
	CHANGE complemento complemento CHAR(20) NULL,
	CHANGE CEP CEP CHAR(8) NOT NULL;

ALTER TABLE aluno
	CHANGE nome_aluno nome_aluno CHAR(20),
	CHANGE sobrenome_aluno sobrenome_aluno CHAR(20),
	CHANGE fk_cod_curso fk_cod_curso INT(4),
	CHANGE fk_cod_turma fk_cod_turma INT(4),
	CHANGE fk_cod_endereco fk_cod_endereco INT(4);

ALTER TABLE telefone_aluno
	CHANGE fk_aluno_RA fk_RA INT (4) NOT NULL;

ALTER TABLE departamento AUTO_INCREMENT=1;

ALTER TABLE professor AUTO_INCREMENT=1;

ALTER TABLE curso AUTO_INCREMENT=1;

ALTER TABLE turma AUTO_INCREMENT=1;

ALTER TABLE disciplina AUTO_INCREMENT=1;

ALTER TABLE tipo_telefone AUTO_INCREMENT=1;

ALTER TABLE telefone AUTO_INCREMENT=1;

ALTER TABLE endereco AUTO_INCREMENT=1;

ALTER TABLE aluno AUTO_INCREMENT=1;

ALTER TABLE telefone_aluno AUTO_INCREMENT=1;

ALTER TABLE tipo_logradouro AUTO_INCREMENT=1;

ALTER TABLE historico AUTO_INCREMENT=1;