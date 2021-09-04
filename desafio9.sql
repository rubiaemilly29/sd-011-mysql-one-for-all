-- Crie uma procedure chamada albuns_do_artista que recebe como parâmetro o nome de uma pessoa artista e em retorno deve exibir as seguintes colunas:

-- 1. O nome da pessoa artista, com o alias "artista".

-- 2. O nome do álbum, com o alias "album".

-- Os resultados devem ser ordenados pelo nome do álbum em ordem alfabética.

-- Confirme a execução correta da procedure, chamando-a e passando o nome igual a "Walter Phoenix". Sua procedure deve retornar o mesmo que o resultado abaixo:

-- CALL albuns_do_artista('Walter Phoenix');
-- DROP PROCEDURE albuns_do_artista;
DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN nome VARCHAR(100))
BEGIN
    SELECT 
        art.nome_artista AS `artista`,
        alb.nome_album AS `album`
    FROM SpotifyClone.Artista AS art
    INNER JOIN SpotifyClone.Album AS alb ON art.artista_id = alb.artista_id
    WHERE art.nome_artista = nome
    ORDER BY `artista` ASC;
END $$

DELIMITER ;
