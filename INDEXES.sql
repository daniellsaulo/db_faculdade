-- ALUNO (CPF, email)
	CREATE INDEX idx_nome_aluno ON aluno(nome_aluno);
    CREATE INDEX idx_email ON aluno(email);
	CREATE INDEX idx_CPF ON aluno(CPF);
	
-- CURSO (nome_curso)
	CREATE INDEX idx_nome_curso ON curso(nome_curso);
	
-- DEPARTAMENTO (nome)
	CREATE INDEX idx_nome_departamento ON departamento(nome_departamento);
	
-- DISCIPLINA (nome_disciplina)
	CREATE INDEX idx_nome_disciplina ON disciplina(nome_disciplina);
	
-- ENDERECO (CEP)
	CREATE INDEX idx_CEP ON endereco(CEP);
	
-- PROFESSOR (nome_professor)
	CREATE INDEX idx_nome_professor ON professor(nome_professor);
	
-- TELEFONE (num_telefone)
	CREATE INDEX idx_num_telefone ON telefone(num_telefone);
	
-- TURMA (periodo)
	CREATE INDEX idx_periodo ON turma(periodo);