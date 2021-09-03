DELIMITER $$

CREATE PROCEDURE albuns_do_artista(nome_artista VARCHAR(100))
BEGIN
SELECT nome AS `artista`,
titulo AS `album`
FROM
SpotifyClone.artistas AS art
INNER JOIN
SpotifyClone.albuns AS alb
ON art.artista_id = alb.artista_id
WHERE art.nome = nome_artista
ORDER BY `album`;
END $$

DELIMITER ;
