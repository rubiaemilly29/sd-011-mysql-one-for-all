SHOW COLUMNS FROM artista;

DELIMITER $$

CREATE PROCEDURE albuns_do_artista(
  IN artista_nome VARCHAR(60)
)
BEGIN
  SELECT
    at.nome_artistico AS 'artista',
    ab.titulo AS 'album'
  FROM
    artista AS at
  INNER JOIN
    album AS ab
    ON ab.artista_id = at.artista_id
  WHERE
    at.nome_artistico = artista_nome;
END $$

DELIMNITER ;
