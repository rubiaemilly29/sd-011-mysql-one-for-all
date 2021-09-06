DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(usuarioId INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE total_musics INT;
SELECT COUNT(hr.usuario_id)
FROM SpotifyClone.historico_de_reproducoes AS hr
INNER JOIN SpotifyClone.usuario AS u ON hr.usuario_id = u.id
WHERE u.id = usuarioId INTO total_musics;
RETURN total_musics;
END $$
DELIMITER ;
