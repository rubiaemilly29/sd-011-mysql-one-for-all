-- Desafio 2
-- Crie uma VIEW chamada estatisticas_musicais que exiba três colunas:

-- A primeira coluna deve exibir a quantidade total de canções. Dê a essa coluna o alias "cancoes".

-- A segunda coluna deve exibir a quantidade total de artistas e deverá ter o alias "artistas".

-- A terceira coluna deve exibir a quantidade de álbuns e deverá ter o alias "albuns".

-- DROP VIEW `estatisticas_musicais`;

CREATE VIEW `estatisticas_musicais` AS
    SELECT 
        COUNT(DISTINCT mus.musica_id) AS `cancoes`,
        COUNT(DISTINCT art.artista_id) AS `artistas`,
        COUNT(DISTINCT alb.album_id) AS `albuns`
    FROM SpotifyClone.Musica AS mus
    INNER JOIN SpotifyClone.Album AS alb ON alb.album_id = mus.album_id
    INNER JOIN SpotifyClone.Artista AS art ON alb.artista_id = art.artista_id;
