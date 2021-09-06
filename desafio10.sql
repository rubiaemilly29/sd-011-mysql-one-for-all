DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(id_usuario INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE total_musicas INT;
SELECT COUNT(hou.musica_id)
FROM SpotifyClone.historico_playlist_usuarios AS hou
WHERE hou.usuario_id = id_usuario INTO total_musicas;
RETURN total_musicas;
END $$
DELIMITER ;
