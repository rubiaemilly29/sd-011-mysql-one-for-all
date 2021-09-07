DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
AFTER DELETE ON SpotifyClone.usuarios
FOR EACH ROW
BEGIN
	DELETE FROM SpotifyClone.tabela_seguidores_artistas
    WHERE SpotifyClone.usuarios.id_usuario = old.id_usuario;
    DELETE FROM SpotifyClone.historico_de_reproducoes
    WHERE SpotifyClone.usuarios.id_usuario = old.id_usuario;
END $$
DELIMITER ;
