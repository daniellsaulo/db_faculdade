-- view de acesso ao registro do aluno, nome completo, respectivo curso e período, em ordem alfabética
CREATE VIEW vw_alunocurso AS
    SELECT RA,  CONCAT(nome_aluno, ' ', sobrenome_aluno) AS nome, nome_curso, periodo FROM aluno a 
    JOIN curso c
        ON c.cod_curso = a.fk_cod_curso
    JOIN turma t
        ON t.cod_turma = a.fk_cod_turma
    ORDER BY a.nome_aluno;


-- view de acesso aos nomes dos professores e suas respectivas disciplinas
CREATE VIEW vw_professorDisciplinas AS
    SELECT p.nome_professor, p.sobrenome_professor, d.nome_disciplina, d.carga_horaria FROM professor p 
    JOIN disciplina_professor dp
        ON dp.fk_cod_professor = p.cod_professor
    JOIN disciplina d 
        ON d.cod_disciplina = dp.fk_cod_disciplina;


-- view de acesso à todos os dados cadastrais dos alunos, em ordem alfabética
CREATE VIEW vw_alunoDados AS
    SELECT a.nome_aluno, a.sobrenome_aluno, a.CPF, a.status, a.sexo, a.nome_pai, a.nome_mae, a.email, a.whatsapp, e.nome_rua, e.numero_rua, e.complemento,
    e.CEP, tl.tipo_logradouro, t.num_telefone, tt.tipo_telefone FROM aluno a
    JOIN endereco e
        ON e.cod_endereco = a.fk_cod_endereco
    JOIN tipo_logradouro tl
        ON tl.cod_tipo_logradouro = e.fk_cod_tipo_logradouro
    JOIN telefone_aluno ta
        ON ta.fk_RA = a.RA
    JOIN telefone t
        ON t.cod_telefone = ta.fk_cod_telefone
    JOIN tipo_telefone tt
        ON tt.cod_tipo = fk_cod_tipo
    ORDER BY a.nome_aluno;

-- view de acesso às disciplinas e seus rescpectivos departamentos, cursos e professores associados
CREATE VIEW vw_disciplinaDepartamento AS
    SELECT d.nome_disciplina, d.nome_departamento, c.nome_curso, p.nome_professor, p.sobrenome_professor FROM disciplina dis  
    JOIN departamento dep
        ON dep.cod_departamento = dis.fk_cod_departamento
    JOIN curso_disciplina cd
        ON cd.fk_cod_disciplina = dis.cod_disciplina
    JOIN curso c
        ON c.cod_curso = cd.fk_cod_curso
    JOIN disciplina_professor dp
        ON dp.fk_cod_disciplina = dis.cod_disciplina
    JOIN professor p
        ON p.cod_professor = dp.fk_cod_professor
    ORDER BY dis.nome_disciplina;