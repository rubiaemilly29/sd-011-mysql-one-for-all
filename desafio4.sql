-- Crie uma VIEW com o nome top_3_artistas que deve mostrar somente as três pessoas artistas mais populares no banco SpotifyClone, possuindo as seguintes colunas:

-- 1. A primeira coluna deve possuir o alias "artista" e exibir o nome da pessoa artista.

-- 2. A segunda coluna deve ter o alias "seguidores" e exibir a quantidade de pessoas que estão seguindo aquela pessoa artista.

-- Seu resultado deve estar ordenado em ordem decrescente, baseando-se na quantidade de seguidores. Em caso de empate, ordene os resultados pelo nome da pessoa artista em ordem alfabética.

-- DROP VIEW SpotifyClone.top_3_artistas;
CREATE VIEW SpotifyClone.top_3_artistas AS 
    SELECT 
        art.nome_artista as `artista`,
        COUNT(seg.artista_id) as `seguidores`
    FROM SpotifyClone.Usuario AS usr
    INNER JOIN SpotifyClone.Seguidores AS seg ON usr.usuario_id = seg.usuario_id
    INNER JOIN SpotifyClone.Artista AS art ON seg.artista_id = art.artista_id
    GROUP BY seg.artista_id
    ORDER BY `seguidores` DESC, `artista`
    LIMIT 3;
