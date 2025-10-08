--comando que cria um novo banco de dados no SSMS
CREATE DATABASE db_escola_M

--Comando que separa em blocos, executando em ordem
GO

--Comando que usa bd criado
USE db_escola_M;

--Comando que cria tabela
CREATE TABLE tb_escola(
  id		INT	            IDENTITY(1,1)         PRIMARY KEY
  ,nome			 NVARCHAR(256) NOT NULL
  ,endereco		 NVARCHAR(256)    NOT NULL
);

GO
--TABELA ALUNO 
SELECT * FROM tb_escola;


CREATE TABLE tb_aluno(
    id			 INT			 IDENTITY(1,1)			PRIMARY KEY
    ,nome		 NVARCHAR(256)					         NOT NULL
    ,cpf         NCHAR(11)       UNIQUE				     NOT NULL
    ,matricula   NVARCHAR(10)    UNIQUE                  NOT NULL
    ,data_nasc   DATE                                    NOT NULL
    ,id_escola    INT                                    NOT NULL

      ,FOREIGN KEY (id_escola) REFERENCES  tb_escola(id)    
);

SELECT * FROM tb_aluno

 CREATE TABLE tb_prova(
	id				INT				IDENTITY (1,1)	PRIMARY KEY
	,nome_professor	NVARCHAR(256)	NOT NULL
	,materia		NVARCHAR(100)   NOT NULL		
	,duracao		TIME			NOT NULL
	,nota			DECIMAL(3,1)	NOT NULL
	,data_prova		DATE			NOT NULL


	,id_aluno		INT				NOT NULL

	,FOREIGN KEY (id_aluno)		REFERENCES		tb_aluno(id)
);

SELECT * FROM tb_prova


--TABELA TURMA

CREATE TABLE tb_turma(
id				INT				IDENTITY (1,1)	PRIMARY KEY
,numero_sala    INT               NOT NULL
,periodo        NVARCHAR(10)      NOT NULL 
,serie          NVARCHAR(10)      NOT NULL
,nome_turma     NVARCHAR(256)     NOT NULL
,id_escola      INT               NOT NULL

    FOREIGN KEY (id_escola) REFERENCES  tb_escola(id)
);

SELECT * FROM tb_turma

CREATE TABLE tb_turma_prova(
   id_turma   INT NOT NULL, --PK
   id_prova   INT NOT NULL, --PK

     PRIMARY KEY(id_turma, id_prova)
);

SELECT * FROM tb_turma_prova