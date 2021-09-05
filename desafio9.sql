DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artista_nome VARCHAR(50))
BEGIN 
SELECT art.artista, alb.album 
FROM SpotifyClone.artistas AS art 
INNER JOIN SpotifyClone.albuns AS alb
ON art.artista_id = alb.artista_id
WHERE art.artista = artista_nome;
END $$

DELIMITER ;

CALL albuns_do_artista('Walter Phoenix');
