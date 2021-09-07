USE SpotifyClone;

DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON SpotifyClone.usuario
FOR EACH ROW
BEGIN
DELETE FROM SpotifyClone.plano_usuario WHERE SpotifyClone.plano_usuario.usuario_id = SpotifyClone.usuario.usuario_id;
DELETE FROM SpotifyClone.artista_seguidores WHERE SpotifyClone.artista_seguidores.usuario_id = SpotifyClone.usuario.usuario_id;
DELETE FROM SpotifyClone.historico_reproducao WHERE SpotifyClone.artista_seguidores.usuario_id = SpotifyClone.usuario.usuario_id;
END $$
DELIMITER ;
