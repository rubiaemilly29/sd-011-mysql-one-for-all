DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(nome VARCHAR(80))
RETURNS INT READS SQL DATA
BEGIN
DECLARE result INT;
SELECT COUNT(*) AS 'quantidade_musicas_no_historico'
FROM SpotifyClone.Historico_reproducoes AS hr
INNER JOIN SpotifyClone.Usuarios AS u
ON hr.UsuarioID = u.UsuarioID
WHERE u.Usuario = nome INTO result;
RETURN result;
END$$
