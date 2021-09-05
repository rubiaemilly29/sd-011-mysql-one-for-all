USE SpotifyClone;
DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN nome_artista VARCHAR(100))
BEGIN
SELECT art.nome_artista AS 'artista', alb.nome_album AS 'album'
FROM SpotifyClone.artista art
INNER JOIN SpotifyClone.album alb ON alb.artista_id = art.id
WHERE art.nome_artista = nome_artista;
END $$
DELIMITER ;
CALL albuns_do_artista('Walter Phoenix');
