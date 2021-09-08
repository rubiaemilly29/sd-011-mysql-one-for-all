--  Precisa ter um delimiter
--  nome CREATE PROCEDURE albuns_do_artista
--  Comando before ou after e onde ele é aplicado
--  Para quais linhas
--  Precisa ter begin
--  O comando e onde ele deve ser feito. Usar o id comparando o old. Repete quantas vezes for necessario
--  Comando end e o delimiter
-- volta o delimiter do jeito que era
-- 
--  Para chamar usamos o comando CALL + nome da procedure
--  AS procedures podem ter valores de entrada. PAra isso usamos dentro dos parametros () IN e o tipo ex: NUMERIC
--  AS procedures podem ter valores de saidas. PAra isso usamos dentro dos parametros () OUT e o nome da variavel de saida + tipo - EX DOUBLE
--  AS procedures podem ter valores de entrada e saidas. PAra isso usamos ambas as sintaxes
--  AS procedures podem ter valores de entrada e saidas juntos. PAra isso usamos o parametro INOUT com o nome da variavel + tipo 7
-- CALL albuns_do_artista('Walter Phoenix');
DELIMITER $$

CREATE PROCEDURE albuns_do_artista (IN nome VARCHAR(50))
BEGIN 
SELECT a.nome_artista AS artista,
al.nome_album AS album
FROM SpotifyClone.artistas AS a
INNER JOIN SpotifyClone.albums al
ON a.artista_id = al.artista_id
WHERE a.nome_artista = nome
ORDER BY album;
END $$

DELIMITER ;
