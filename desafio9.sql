DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN art_nome VARCHAR(100))
BEGIN
SELECT
art.nome_artista AS 'artista',
alb.nome_album AS 'album'
FROM SpotifyClone.artistas AS art
INNER JOIN SpotifyClone.albuns AS alb
ON art.artista_id = alb.artista_id
WHERE art.nome_artista = art_nome; 
END $$
