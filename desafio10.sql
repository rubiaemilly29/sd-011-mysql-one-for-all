USE SpotifyClone;
DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(id int)
RETURNS INT READS SQL DATA
BEGIN
DECLARE musics_total INT;
SELECT COUNT(*)
FROM `history`
WHERE user_id = id
GROUP BY user_id INTO musics_total;
RETURN musics_total;
END $$
DELIMITER ;
