--DQL
USE db_Devconnect

--USUARIOS
SELECT * FROM tb_usuario;


--PUBLICACAO
SELECT * FROM tb_publicacao;


--CURTIDA
SELECT * FROM tb_curtida;


--COMENTARIO
SELECT * FROM tb_comentario;


--SEGUIDORES
SELECT * FROM tb_seguidor;

-- Usuários
CREATE TABLE tb_Usuarios (
    id_usuario INT PRIMARY KEY IDENTITY,
    nome NVARCHAR(100) NOT NULL
);

SELECT 
    seguidor.nomecompleto AS Seguidor,
    seguido.nomecompleto AS Seguindo
FROM tb_seguidor s
JOIN tb_usuario seguidor ON s.id_usuario_seguidor = seguidor.id
JOIN tb_usuario seguido   ON s.id_usuario_seguir = seguido.id;

SELECT 
    u.nomecompleto AS Usuario,
    COUNT(s.id_usuario_seguidor) AS Total_Seguidores
FROM tb_usuario u
LEFT JOIN tb_seguidor s ON s.id_usuario_seguidor = u.id
GROUP BY u.nomecompleto;

SELECT 
    p.descricao AS Descricao,
    p.imagem_url AS Imagem,
    u.nomeusuario AS Nome_Usuario
FROM tb_publicacao p
JOIN tb_usuario u ON p.id_usuario = u.id;

SELECT 
    u.nomecompleto AS Usuario,
    c.texto AS Comentario,
    p.descricao AS Publicacao
FROM tb_comentario c
JOIN tb_usuario u ON c.id_usuario = u.id
JOIN tb_publicacao p ON c.id_publicacao = p.id;

SELECT 
    p.descricao AS Publicacao,
    COUNT(c.id_publicacao) AS Total_Curtidas
FROM tb_publicacao p
LEFT JOIN tb_curtida c ON p.id = c.id_publicacao
GROUP BY p.descricao;

SELECT 
    u.id,
    u.nomecompleto
FROM tb_usuario u
LEFT JOIN tb_publicacao p ON u.id = p.id_usuario
WHERE p.id IS NULL;

SELECT 
    u.id,
    u.nomecompleto
FROM tb_usuario u
LEFT JOIN tb_curtida c ON u.id = c.id_usuario
WHERE c.id IS NULL;

DELETE FROM tb_curtida
WHERE id_usuario = 1 AND id_publicacao = 2;





