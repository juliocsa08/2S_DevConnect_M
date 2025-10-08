USE db_escola_M;

--CONSULTA que irá exibir somente as colunas
SELECT id, nome FROM tb_escola;

--SELECT TOP limita a quantidade de registros
SELECT TOP 3 nome FROM tb_aluno;


--Exibir somente 3 registros do mais recente para o menor 
SELECT TOP 3 nome 
FROM tb_aluno
ORDER BY id DESC;
	

--exibe somente o nome da turma do periodo da manhã
SELECT * FROM tb_turma

SELECT nome_turma	
FROM tb_turma
WHERE periodo = 'Manhã';


--exibe
SELECT * FROM tb_prova
WHERE nome_professor = 'Aline Viola caida';

--EXIBE QUANTOS ALUNOS TEM 
SELECT COUNT (cpf) AS qtd_total_alunos FROM tb_aluno;

--select nome from tb_aluno;

SELECT COUNT (materia) AS qtd_total_alunos_prova FROM tb_prova
WHERE materia = 'Filosofia';


SELECT MIN (data_nasc) FROM tb_aluno;

SELECT MAX (data_nasc) FROM tb_aluno;

SELECT nome, data_nasc
FROM tb_aluno
WHERE data_nasc = (SELECT MIN (data_nasc) FROM tb_aluno);


SELECT AVG(nota) AS media FROM tb_prova;

select * from tb_prova;

SELECT MAX(data_nasc) AS mais_novo, id
FROM tb_aluno
GROUP BY id
ORDER BY mais_novo DESC;