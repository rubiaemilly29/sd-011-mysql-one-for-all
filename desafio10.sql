USE SpotifyClone;
DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(idUsuario INT)
RETURNS INT READS SQL DATA 
BEGIN
DECLARE quantity DOUBLE;
SELECT COUNT(H.musica_id) FROM SpotifyClone.historico AS H
INNER JOIN SpotifyClone.usuarios AS U
ON H.usuario_id = U.usuario_id
WHERE H.usuario_id = idUsuario
INTO quantity;
RETURN quantity;
END $$
DELIMITER ;
