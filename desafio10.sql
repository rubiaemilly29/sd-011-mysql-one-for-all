DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(user_id int)
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidade INT;
select count(musica_id) from historico_de_reproducoes
group by usuario_id
having usuario_id = user_id into quantidade;
RETURN quantidade;
END $$

DELIMITER ;
