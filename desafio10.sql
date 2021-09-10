DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(nome VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidade_musicas_no_historico INT;
SELECT
COUNT(h.id_cancao) AS quantidade_musicas_no_historico
FROM SpotifyClone.historico_de_reproducoes AS h
INNER JOIN SpotifyClone.usuarios AS u
ON h.id_usuario = u.id_usuario
WHERE u.nome_usuario LIKE CONCAT('%', nome, '%') INTO quantidade_musicas_no_historico;
RETURN quantidade_musicas_no_historico;
END $$
DELIMITER ;
