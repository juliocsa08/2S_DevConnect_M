	--DDL
	CREATE DATABASE db_Devconnect

	GO

USE db_Devconnect;

CREATE TABLE tb_usuario(
   id               INT             IDENTITY(1,1) PRIMARY KEY
  ,nome_completo    NVARCHAR(255)                 NOT NULL
  ,nome_usuario     NVARCHAR(50)    UNIQUE        NOT NULL
  ,email            NVARCHAR(255)   UNIQUE        NOT NULL
  ,senha            NVARCHAR(50)                  NOT NULL
  ,foto_perfil_url  NVARCHAR(200)                 NULL 
  );

CREATE TABLE tb_publicacao(
  id INT IDENTITY(1,1) PRIMARY KEY
  ,descricao NVARCHAR(255) NOT NULL
  ,imagem_url NVARCHAR(255) NULL
  ,data_publicacao DATE NOT NULL
  ,id_usuario INT        NOT NULL

  FOREIGN KEY(id_usuario) REFERENCES tb_usuario(id)
);

CREATE TABLE tb_curtida(
 id INT IDENTITY(1,1) PRIMARY KEY
 ,id_usuario INT NOT NULL
 ,id_publicacao INT NOT NULL

 FOREIGN KEY(id_usuario) REFERENCES tb_usuario(id)
,FOREIGN KEY(id_publicacao) REFERENCES tb_publicacao(id)
);

CREATE TABLE tb_comentario(
   id INT IDENTITY(1,1) PRIMARY KEY
   ,texto NVARCHAR(255) NOT NULL
   ,data_comentario DATE NOT NULL
   ,id_usuario INT NOT NULL
   ,id_publicacao INT NOT NULL

    FOREIGN KEY(id_usuario) REFERENCES tb_usuario(id)
   ,FOREIGN KEY(id_publicacao) REFERENCES tb_publicacao(id)
);

CREATE TABLE tb_seguidor(
  id_usuario_seguir INT NOT NULL
 ,id_usuario_seguidor INT NOT NULL

   PRIMARY KEY(id_usuario_seguir,id_usuario_seguidor)
);