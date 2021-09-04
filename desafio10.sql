-- Crie uma function chamada de quantidade_musicas_no_historico que exibe a quantidade de músicas que estão presentes atualmente no histórico de reprodução de uma pessoa usuária. Ao receber o código identificador da pessoa, exiba a quantidade de canções em seu histórico de reprodução.

-- Confirme a execução correta da function, chamando-a e passando o id para a pessoa usuária com o nome igual a "Bill". Sua function deve retornar o mesmo que o resultado abaixo:

DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico (new_id INT)
RETURNS INT READS SQL DATABASE
BEGIN
    DECLARE qtd_musicas_historico INT;

    SELECT COUNT(hist.musica_id) AS `quantidade_musicas_no_historico`
    FROM SpotifyClone.Historico AS hist 
    INNER JOIN SpotifyClone.Musica AS mus ON mus.musica_id = hist.musica_id
    INNER JOIN SpotifyClone.Usuario AS usr ON hist.usuario_id = usr.usuario_id
    WHERE usr.usuario_id = new_id
    GROUP BY hist.usuario_id
    INTO qtd_musicas_historico
RETURN qtd_musicas_historico;
END $$
DELIMITER ;
