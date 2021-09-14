USE SpotifyClone
DEMILITER $$ 
CREATE trigger_usuario_delete
    BEFORE DELETE ON usuarios
    FOR EACH ROW
BEGIN 
    DELETE FROM seguindo_artistas WHERE usuario_id = OLD.usuario_id;
    DELETE FROM historico_de_reproducoes WHERE usuario_id = OLD.usuario_id;
END $$
DEMILITER
