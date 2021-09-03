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
    SpotifyClone.artista AS at
  INNER JOIN
    SpotifyClone.album AS ab
    ON ab.artista_id = at.artista_id
  WHERE
    at.nome_artistico = artista_nome;
END $$

DELIMNITER ;
