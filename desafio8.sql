DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
    BEFORE DELETE ON SpotifyClone.usuario
    FOR EACH ROW
BEGIN
    DELETE FROM historico_de_reproducoes
    WHERE historico_de_reproducoes.usuario_id = old.usuario_id;
    DELETE FROM usuario_segue_artista
    WHERE usuario_segue_artista.usuario_id = old.usuario_id;
END $$
DELIMITER ;
