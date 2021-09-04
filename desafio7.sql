-- Mostre uma relação de todos os álbuns produzidos por cada pessoa artista, com a quantidade de seguidores que ela possui, de acordo com os detalhes a seguir. Para tal, crie uma VIEW chamada perfil_artistas, com as seguintes colunas:

-- 1. A primeira coluna deve exibir o nome da pessoa artista, com o alias "artista".

-- 2. A segunda coluna deve exibir o nome do álbum, com o alias "album".

-- 3. A terceira coluna deve exibir a quantidade de pessoas seguidoras que aquela pessoa artista possui e deve possuir o alias "seguidores".

-- Seus resultados devem estar ordenados de forma decrescente, baseando-se no número de pessoas seguidoras. Em caso de empate no número de pessoas, ordene os resultados pelo nome da pessoa artista em ordem alfabética e caso há artistas com o mesmo nome, ordene os resultados pelo nome do álbum alfabeticamente.

-- DROP VIEW `perfil_artistas`;

CREATE VIEW `perfil_artistas` AS 
    SELECT 
        art.nome_artista AS `artista`,
        alb.nome_album AS `album`,
        COUNT (*) AS `seguidores`
    FROM SpotifyClone.Artista AS art 
    INNER JOIN SpotifyClone.Album AS alb ON art.artista_id = alb.artista_id
    INNER JOIN SpotifyClone.Seguidores AS seg ON art.artista_id = seg.artista_id
    GROUP BY art.artista_id, alb.nome_album
    ORDER BY `seguidores`  DESC, `artista`, `album`;
