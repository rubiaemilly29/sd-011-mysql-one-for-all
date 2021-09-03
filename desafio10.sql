USE SpotifyClone;

DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(userId int)
RETURNS INT READS SQL DATA
BEGIN
    DECLARE quantity INT;
    SELECT COUNT(*)
    FROM SpotifyClone.Usuario_Musica UsuarioMusica
    WHERE UsuarioMusica.usuario_id = userId INTO quantity;
    RETURN quantity;
END $$
DELIMITER ;
