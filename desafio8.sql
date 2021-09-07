DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
	AFTER DELETE ON usuario
    FOR EACH ROW
BEGIN
    DELETE FROM SpotifyClone.seguindo_artistas
    WHERE OLD.usuario_id = SpotifyClone.seguindo_artistas.usuario_id;
    DELETE FROM SpotifyClone.historico_de_reproducoes
    WHERE OLD.usuario_id = SpotifyClone.historico_de_reproducoes.usuario_id;
END $$
DELIMITER ;
