DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artistaNome VARCHAR(30))
BEGIN 
SELECT art.artista, alb.album FROM SpotifyClone.Artistas AS art 
INNER JOIN SpotifyClone.Albuns AS alb
ON art.artista_id = alb.artista_id
WHERE art.artista = artistaNome;
END $$

DELIMITER ;

CALL albuns_do_artista('Walter Phoenix');
