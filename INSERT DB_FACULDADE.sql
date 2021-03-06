INSERT INTO tipo_logradouro (tipo_logradouro) VALUES
    ('apartamento'),
    ('casa'),
    ('loja'),
    ('lote'),
    ('quadra'),
    ('avenida'),
    ('chacara'),
    ('condominio'),
    ('setor');

INSERT INTO endereco VALUES
    (DEFAULT, 'Rua Oscar Freire', 1345, 'Oeste', 70235498, 1),
    (DEFAULT, 'Rua Freire Oscar', 845, 'Leste', 70235798, 2),
    (DEFAULT, 'Rua Madalena', 545, 'Norte', 70015498, 3),
    (DEFAULT, 'Rua Gustavo Paulo', 45, 'Sul', 70287498, 4);

INSERT INTO departamento (nome_departamento) VALUES
    ('Ciencias Humanas'),
    ('Matematica'),
    ('Biologicas'),
    ('Estagio'),
    ('Tecnologia Informaçã');

INSERT INTO curso VALUES
    (DEFAULT, 'Eng. de software', 5),
    (DEFAULT, 'Analise de sistemas', 5),
    (DEFAULT, 'Biologia', 3),
    (DEFAULT, 'Historia', 1),
    (DEFAULT, 'Matematica', 2),
    (DEFAULT, 'Engenharia eletrica', 4),
    (DEFAULT, 'Pscicologia', 1),
    (DEFAULT, 'Data Science', 5),
    (DEFAULT, 'Engenheiro de Dados', 5),
    (DEFAULT, 'Enfermagem', 3);

INSERT INTO turma VALUES
    (DEFAULT, 'vesperti', 35, '2022-07-25','2022-12-02',1),
    (DEFAULT, 'matutino', 42, '2022-08-02','2022-11-21',2),
    (DEFAULT, 'noturno', 39, '2022-06-21','2022-10-29',3),
    (DEFAULT, 'vesperti', 27, '2022-07-10','2022-09-15',4),
    (DEFAULT, 'matutino', 41, '2022-09-03','2022-12-08',5),
    (DEFAULT, 'norutno', 32, '2022-08-18','2022-10-30',6),
    (DEFAULT, 'vesperti', 31, '2022-06-11','2022-08-12',7),
    (DEFAULT, 'noturno', 30, '2022-07-05','2022-11-14',8);

INSERT INTO aluno VALUES
    (DEFAULT, 'Daniel', 'Saulo', 05712345874, 1, 'm', 'João Paulo Conceição', 'Maria Conceição', 'danielsaulo@gmail.com', '61996002771',10,8,4),
    (DEFAULT, 'Rafael', 'Torres', 13090776465, 1, 'm', 'Miguel Torres', 'Alice Torres', 'rafaeltorres@gmail.com', '61992155745',null,7,3),
    (DEFAULT, 'João', 'Souza', 43493297142, 1, 'm', 'Arthur Souza', 'Maria Helena Souza', 'joaosouza@gmail.com', '',8,6,2),
    (DEFAULT, 'Ricardo', 'Souza', 52234588007, 1, 'm', 'Samuel Souza', 'Valentina Souza', 'ricardosouza@gmail.com', '61999413419',7,5,1),
    (DEFAULT, 'Sergio', 'Conceição', 56128082106, 1, 'm', 'Carlos Eduardo Conceição', 'Maria da Conceição', 'sergioconceicao@gmail.com', '61997066213',null,4,4),
    (DEFAULT, 'Daniel', 'Souza', 67069738277, 1, 'm', 'Pedro Souza', 'Helena Souza', 'danielsouza@gmail.com', '61996856837',5,3,2),
    (DEFAULT, 'Lenilza', 'Torres', 65959231400, 1, 'f', 'Matheus Torres', 'Valentina Torres', 'lenilzatorres@gmail.com', '61991072480',4,2,2),
    (DEFAULT, 'Kislem', 'Martins', 02017709750, 1, 'f', 'Samuel Martins', 'Ana Martins', 'kislemmartins@gmail.com', '',3,1,1),
    (DEFAULT, 'Katya', 'Zamolodchikova', 68777755224, 1, 'f', 'Eduardo Souza', 'Maria Sarah', 'katyazamolodchikova@gmail.com', '61994568240',2,8,4),
    (DEFAULT, 'Paulo', 'Torres', 77497250587, 1, 'm', 'Murilo Torres', 'Nicole Torres', 'paulotorres@gmail.com', '61992509705',1,7,3),
    (DEFAULT, 'Ives', 'Souza', 96440105673, 1, 'm', 'Caio Souza', 'Bianca Souza', 'ivessouza@gmail.com', '',10,6,2),
    (DEFAULT, 'Filipe', 'Medeiros', 17203983322, 1, 'm', 'Isaac Medeiros', 'Alice Medeiros', 'filipemedeiros@gmail.com', '61997527608',9,5,1),
    (DEFAULT, 'Antônio', 'Martins', 22179014372, 1, 'm', 'Cauã Martins', 'Manuela Martins', 'daniantoniomartinselsaulo@gmail.com', '61996739076',8,4,4),
    (DEFAULT, 'Jonas', 'Souza', 43512724344, 1, 'm', 'João Souza', 'Lorena Souza', 'jonassouza@gmail.com', '61998516499',7,3,3),
    (DEFAULT, 'Edgar', 'Maia', 52643044297, 1, 'm', 'Emanual Maia', 'Agnes Maia', 'edgarmaia@gmail.com', '',6,2,2),
    (DEFAULT, 'Yasmin', 'Souza', 66025892034, 1, 'f', 'Enrico Souza', 'Brenda Souza', 'yasminsouza@gmail.com', '61999228422',null,1,1),
    (DEFAULT, 'Isis', 'Meira', 87877917112, 1, 'f', 'Miguel Meira', 'Isabela Meira', 'isismeira@gmail.com', '61994944033',4,8,4),
    (DEFAULT, 'Larissa', 'Martins', 44450426062, 1, 'f', 'Lorenzo Martins', 'Carol Martins', 'larissamartins@gmail.com', '61993087300',3,7,3),
    (DEFAULT, 'Amanda', 'Maia', 53064596707, 1, 'f', 'Rafael Maia', 'Daniella Maia', 'amandamaia@gmail.com', '61993815956',2,6,2),
    (DEFAULT, 'Letícia', 'Torres', 14758592578, 1, 'f', 'Victor Torres', 'Lia Torres', 'leticiatorres@gmail.com', '61992382493',1,5,1);
    

INSERT INTO tipo_telefone (tipo_telefone) VALUES
    ('celular'),
    ('residenc'),
    ('comercia');


INSERT INTO telefone (num_telefone, fk_cod_tipo) VALUES
    ('61992155745', 1), -- 2
    ('61997527608', 1), -- 12
    ('61996739076', 1), -- 13
    ('61998516499', 1), -- 14
    ('61993087300', 1), -- 18
    ('61993727611', 1),
    ('61990995419', 1),
    ('61999231161', 1),
    ('61997342782', 1),
    ('61994057709', 1),
    ('61992008006', 1),
    ('61999194852', 1),
    ('61999194852', 1),
    ('61995156276', 1),
    ('6133411327', 2),
    ('6133678539', 2),
    ('6133334771', 2),
    ('6133674015', 2),
    ('6133341408', 2),
    ('6133095220', 2),
    ('6133874259', 2),
    ('6133225555', 2),
    ('6133730221', 3),
    ('6133683227', 3),
    ('6133826132', 3),
    ('6133254076', 3),
    ('6133878773', 3),
    ('6133460742', 3);

INSERT INTO telefone_aluno (fk_RA, fk_cod_telefone) VALUES
    (1, 6),
    (1, 15),
    (1, 23),
    (2, 1),
    (3, 7),
    (4, 8),
    (5, 9),
    (5, 16),
    (5, 24),
    (6, 10),
    (7, 11),
    (8, 12),
    (9, 13),
    (9, 17),
    (9, 25),
    (10, 14),
    (11, 18),
    (12, 2),
    (13, 3),
    (14, 4),
    (15, 19),
    (16, 20),
    (17, 21),
    (18, 5),
    (19, 22),
    (20, 26);

INSERT INTO disciplina VALUES
    (DEFAULT, 'Raciocinio logico', 40, 'Estudo da lógica em preposições e tabelas', 29, 2),
    (DEFAULT, 'Pscicolog Cognitiva', 50, 'Estud da capacidade de perceber, aprender, lembrar', 35, 1),
    (DEFAULT, 'Eletronica digital', 35, 'Estudo de circuitos eletrônicos digitais', 42, 2),
    (DEFAULT, 'Programacao em C', 60, 'Estudo da linguagem de programação C', 45, 5),
    (DEFAULT, 'Geografia', 50, 'Estudo do espaço que ocupamos e suas característic', 15, 1),
    (DEFAULT, 'História', 50, 'Analisa todos os movimentos e fatos que ocorreram', 19, 1),
    (DEFAULT, 'Filosofia', 30, 'Conhecimento, com a criação de ideias', 18, 1),
    (DEFAULT, 'Sociologia', 30, 'Busca entender como nos comportamos na sociedade', 21, 1),
    (DEFAULT, 'Ética e justiça', 20, 'Estudo da ética e justça', 26, 1),
    (DEFAULT, 'Relações de trabalho', 30, 'Estudo das relações no ambiente de trabalho', 23, 1),
    (DEFAULT, 'Biologia Celular', 30, 'Estudo da Biologia celular', 34, 3),
    (DEFAULT, 'Botânica', 40, 'Estudo da botânica', 31, 3),
    (DEFAULT, 'Ciência Fisiológicas', 30, 'Estudo das ciências fisiológicas', 30, 3),
    (DEFAULT, 'Ecologia', 30, 'Estudo da ecologia', 29, 3),
    (DEFAULT, 'Fitopatologia', 40, 'Estudo da fitopatologia', 19, 3),
    (DEFAULT, 'Genética', 70, 'Estudo da genética', 22, 3),
    (DEFAULT, 'Morfologia', 30, 'Estudo da Morfologia', 20, 3),
    (DEFAULT, 'Zoologia ', 40, 'Estudo da Zoologia', 12, 3),
    (DEFAULT, 'Gestão Seguran de TI', 60, 'Estudo da Gestão da Segurança de TI', 32, 5),
    (DEFAULT, 'Gestão de Projetos', 50, 'Estudo da Gestão de Projetos', 30, 5),
    (DEFAULT, 'Banco de Dados', 70, 'Estudo do Banco de Dados', 46, 5),
    (DEFAULT, 'Engenharia de Softwa', 60, 'Estudo da Engenharia de Software', 45, 5),
    (DEFAULT, 'Gestão de Infraestru', 40, 'Estudo da Gestão de Infraestrutura', 40, 5),
    (DEFAULT, 'Modelagem de Softwar', 30, 'Estudo da Modelagem de Software', 49, 5),
    (DEFAULT, 'Empreendedorismo', 30, 'Estudo do Empreendedorismo', 32, 5),
    (DEFAULT, 'Desenho Técnico', 20, 'Estudo do Desenho Técnico', 35, 5),
    (DEFAULT, 'Evolução', 60, 'Estudo da Evolução humana', 22, 3),
    (DEFAULT, 'Imunologia', 40, 'Estudo da Imunologia', 19, 3),
    (DEFAULT, 'Patologia', 50, 'Estudo da Patologia', 27, 3),
    (DEFAULT, 'Morfologia Vegetal', 45, 'Estudo da Morfologia Vegetal', 17, 3);

INSERT INTO professor VALUES
    (DEFAULT, 'Luciano', 'Lopes', 1, 5),
    (DEFAULT, 'Telma', 'Rocha', 1, 4),
    (DEFAULT, 'Ricardo', 'Amaral', 1, 3),
    (DEFAULT, 'Fabiana', 'Silva', 1, 2),
    (DEFAULT, 'Valda', 'Martins', 1, 1),
    (DEFAULT, 'Valdireny', 'Santos', 1, 5),
    (DEFAULT, 'Pedro', 'Silva', 1, 3),
    (DEFAULT, 'Raul', 'Anthony', 0, 2),
    (DEFAULT, 'Isabel', 'Mariah', 0, 1),
    (DEFAULT, 'Aparecida', 'Isadora', 0, 5);

INSERT INTO disciplina_professor VALUES
    (1,4),
    (1,19),
    (1,20),
    (1,21),
    (1,22),
    (1,23),
    (1,24),
    (1,25),
    (1,26),
    (3,11),
    (3,12),
    (3,13),
    (3,14),
    (3,15),
    (3,16),
    (3,17),
    (3,18),
    (3,27),
    (3,28),
    (3,29),
    (3,30),
    (4,1),
    (4,3),
    (5,2),
    (5,5),
    (5,6),
    (5,7),
    (5,8),
    (5,9),
    (5,10);

INSERT INTO curso_disciplina VALUES
    (1,4),
    (1,19),
    (1,20),
    (1,21),
    (1,22),
    (1,23),
    (1,24),
    (1,25),
    (1,26),
    (3,11),
    (3,12),
    (3,13),
    (3,14),
    (3,15),
    (3,16),
    (3,17),
    (3,18),
    (3,27),
    (3,28),
    (3,29),
    (3,30),
    (4,2),
    (4,5),
    (4,6),
    (4,7),
    (4,8),
    (4,9),
    (4,10),
    (5,1),
    (5,3);

INSERT INTO historico VALUES
    (DEFAULT, '2022-02-01', '2025-12-10', 1),
    (DEFAULT, '2021-07-21', '2025-06-12', 2),
    (DEFAULT, '2022-02-01', '2023-12-01', 3),
    (DEFAULT, '2021-07-21', '2024-11-30', 4),
    (DEFAULT, '2021-02-10', '2025-12-02', 5),
    (DEFAULT, '2020-08-07', '2023-06-10', 6),
    (DEFAULT, '2020-02-05', '2023-12-04', 7),
    (DEFAULT, '2019-08-08', '2023-06-02', 8),
    (DEFAULT, '2022-02-01', '2025-12-09', 9),
    (DEFAULT, '2019-07-31', '2023-06-02', 10),
    (DEFAULT, '2022-02-01', '2025-12-10', 11),
    (DEFAULT, '2021-07-21', '2025-06-12', 12),
    (DEFAULT, '2022-02-01', '2023-12-01', 13),
    (DEFAULT, '2021-07-21', '2024-11-30', 14),
    (DEFAULT, '2021-02-10', '2025-12-02', 15),
    (DEFAULT, '2020-08-07', '2023-06-10', 16),
    (DEFAULT, '2020-02-05', '2023-12-04', 17),
    (DEFAULT, '2019-08-08', '2023-06-02', 18),
    (DEFAULT, '2022-02-01', '2025-12-09', 19),
    (DEFAULT, '2019-07-31', '2023-06-02', 20);

INSERT INTO disciplina_historico VALUES
    ( 1 , 1 , 6 , 107 ),
    ( 2 , 1 , 6 , 187 ),
    ( 3 , 1 , 10 , 164 ),
    ( 4 , 1 , 10 , 185 ),
    ( 5 , 1 , 10 , 227 ),
    ( 6 , 1 , 10 , 220 ),
    ( 7 , 1 , 10 , 126 ),
    ( 8 , 2 , 9 , 243 ),
    ( 9 , 2 , 9 , 131 ),
    ( 10 , 2 , 6 , 185 ),
    ( 11 , 2 , 6 , 182 ),
    ( 12 , 2 , 7 , 215 ),
    ( 13 , 2 , 8 , 150 ),
    ( 14 , 2 , 10 , 244 ),
    ( 15 , 3 , 6 , 231 ),
    ( 16 , 3 , 9 , 101 ),
    ( 17 , 3 , 7 , 222 ),
    ( 18 , 3 , 6 , 194 ),
    ( 19 , 3 , 9 , 237 ),
    ( 20 , 3 , 7 , 220 ),
    ( 21 , 3 , 7 , 226 ),
    ( 22 , 4 , 7 , 176 ),
    ( 23 , 4 , 10 , 136 ),
    ( 24 , 4 , 7 , 187 ),
    ( 25 , 4 , 6 , 122 ),
    ( 26 , 4 , 8 , 139 ),
    ( 27 , 4 , 9 , 211 ),
    ( 28 , 4 , 8 , 133 ),
    ( 29 , 5 , 6 , 211 ),
    ( 30 , 5 , 10 , 209 );
    
INSERT aluno_disciplina VALUES 
    ( 1 , 1 ),
    ( 2 , 1 ),
    ( 3 , 1 ),
    ( 4 , 1 ),
    ( 5 , 1 ),
    ( 6 , 1 ),
    ( 7 , 1 ),
    ( 8 , 2 ),
    ( 9 , 2 ),
    ( 10 , 2 ),
    ( 11 , 2 ),
    ( 12 , 2 ),
    ( 13 , 2 ),
    ( 14 , 2 ),
    ( 15 , 3 ),
    ( 16 , 3 ),
    ( 17 , 3 ),
    ( 18 , 3 ),
    ( 19 , 3 ),
    ( 20 , 3 ),
    ( 21 , 3 ),
    ( 22 , 4 ),
    ( 23 , 4 ),
    ( 24 , 4 ),
    ( 25 , 4 ),
    ( 26 , 4 ),
    ( 27 , 4 ),
    ( 28 , 4 ),
    ( 29 , 5 ),
    ( 30 , 5 ),
    ( 1 , 5 ),
    ( 2 , 5 ),
    ( 3 , 5 ),
    ( 4 , 5 ),
    ( 5 , 5 ),
    ( 6 , 6 ),
    ( 7 , 6 ),
    ( 8 , 6 ),
    ( 9 , 6 ),
    ( 10 , 6 ),
    ( 11 , 6 ),
    ( 12 , 6 ),
    ( 13 , 7 ),
    ( 14 , 7 ),
    ( 15 , 7 ),
    ( 16 , 7 ),
    ( 17 , 7 ),
    ( 18 , 7 ),
    ( 19 , 7 ),
    ( 20 , 8 ),
    ( 21 , 8 ),
    ( 22 , 8 ),
    ( 23 , 8 ),
    ( 24 , 8 ),
    ( 25 , 8 ),
    ( 26 , 8 ),
    ( 27 , 9 ),
    ( 28 , 9 ),
    ( 29 , 9 ),
    ( 30 , 9 ),
    ( 1 , 9 ),
    ( 2 , 9 ),
    ( 3 , 9 ),
    ( 4 , 10 ),
    ( 5 , 10 ),
    ( 6 , 10 ),
    ( 7 , 10 ),
    ( 8 , 10 ),
    ( 9 , 10 ),
    ( 10 , 10 ),
    ( 11 , 11 ),
    ( 12 , 11 ),
    ( 13 , 11 ),
    ( 14 , 11 ),
    ( 15 , 11 ),
    ( 16 , 11 ),
    ( 17 , 11 ),
    ( 18 , 12 ),
    ( 19 , 12 ),
    ( 20 , 12 ),
    ( 21 , 12 ),
    ( 22 , 12 ),
    ( 23 , 12 ),
    ( 24 , 12 ),
    ( 25 , 13 ),
    ( 26 , 13 ),
    ( 27 , 13 ),
    ( 28 , 13 ),
    ( 29 , 13 ),
    ( 30 , 13 ),
    ( 1 , 13 ),
    ( 2 , 14 ),
    ( 3 , 14 ),
    ( 4 , 14 ),
    ( 5 , 14 ),
    ( 6 , 14 ),
    ( 7 , 14 ),
    ( 8 , 14 ),
    ( 9 , 15 ),
    ( 10 , 15 ),
    ( 11 , 15 ),
    ( 12 , 15 ),
    ( 13 , 15 ),
    ( 14 , 15 ),
    ( 15 , 15 ),
    ( 16 , 16 ),
    ( 17 , 16 ),
    ( 18 , 16 ),
    ( 19 , 16 ),
    ( 20 , 16 ),
    ( 21 , 16 ),
    ( 22 , 16 ),
    ( 23 , 17 ),
    ( 24 , 17 ),
    ( 25 , 17 ),
    ( 26 , 17 ),
    ( 27 , 17 ),
    ( 28 , 17 ),
    ( 29 , 17 ),
    ( 30 , 18 ),
    ( 1 , 18 ),
    ( 2 , 18 ),
    ( 3 , 18 ),
    ( 4 , 18 ),
    ( 5 , 18 ),
    ( 6 , 18 ),
    ( 7 , 19 ),
    ( 8 , 19 ),
    ( 9 , 19 ),
    ( 10 , 19 ),
    ( 11 , 19 ),
    ( 12 , 19 ),
    ( 13 , 19 ),
    ( 14 , 20 ),
    ( 15 , 20 ),
    ( 16 , 20 ),
    ( 17 , 20 ),
    ( 18 , 20 ),
    ( 19 , 20 ),
    ( 20 , 20 );