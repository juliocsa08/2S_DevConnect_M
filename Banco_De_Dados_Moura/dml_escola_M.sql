--Comando para usar um banco já criado
USE db_escola_M;

--Comando para inserir um novo jogo

INSERT INTO tb_escola(nome, endereco)
VALUES ('Moura Branco', 'Rua Tapajós, 1085 - olímpico');

SELECT * FROM tb_escola;

INSERT INTO tb_aluno(nome, cpf, data_nasc, matricula, id_escola) VALUES
('Nathalia', '82735860817', '2008/02/23','12345633', 1 ),
('Joseph' , '82777523590' , '2008/04/24' , '12345678',  1);

INSERT INTO tb_aluno(nome, cpf, data_nasc, matricula, id_escola) VALUES
('Claudionor', '22245633430', '2007/02/21','2313', 1 ),
('amandirson', '56754589820', '2008/03/12','6456', 1 ),
('valmilson',  '33426977620', '2009/07/09','9797', 1 );


SELECT * FROM tb_aluno;



SELECT * FROM tb_turma;


INSERT INTO tb_prova (materia, nome_professor, duracao, nota, data_prova, id_aluno) VALUES
('Filosofia', 'renato cabresto',  '01:00:00' , 10, '2025-08-25', 1) ,
('Geografia' ,'Aline Viola caida',  '02:40:00' , 10, '2025-09-20', 1);

SELECT * FROM tb_prova;

INSERT INTO tb_turma_prova (id_turma, id_prova) VALUES
(4, 1),
(4, 2);

SELECT * FROM tb_turma_prova;

UPDATE tb_aluno
SET nome = 'Clovis'
WHERE cpf = '56753478876';




UPDATE tb_aluno
SET nome = 'Clovis'
WHERE cpf = '82777523590';

SELECT * FROM tb_aluno;

DELETE FROM tb_aluno
WHERE matricula = '6456';


SELECT * FROM tb_aluno;