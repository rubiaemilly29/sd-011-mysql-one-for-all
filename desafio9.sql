DELIMITER $$
CREATE PROCEDURE albuns_do_artista(
  IN artista_nome VARCHAR(60)
)
BEGIN
SELECT A.nome_do_artista AS 'artista', B.titulo_do_album AS 'album'
FROM artista AS A
INNER JOIN album AS B
ON B.artista_id = A.artista_id
WHERE
A.nome_do_artista = artista_nome;
END $$
DELIMNITER ;
