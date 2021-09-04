-- Desafio 2
-- Crie uma VIEW chamada estatisticas_musicais que exiba três colunas:

-- A primeira coluna deve exibir a quantidade total de canções. Dê a essa coluna o alias "cancoes".

-- A segunda coluna deve exibir a quantidade total de artistas e deverá ter o alias "artistas".

-- A terceira coluna deve exibir a quantidade de álbuns e deverá ter o alias "albuns".

DROP VIEW estatisticas_musicais;

CREATE VIEW estatisticas_musicais AS
    SELECT 
        COUNT(DISTINCT MUS.musica_id) AS cancoes,
        COUNT(DISTINCT ART.artista_id) AS artistas,
        COUNT(DISTINCT ALB.album_id) AS albuns
    FROM SpotifyClone.Musica AS MUS 
    INNER JOIN SpotifyClone.Album AS ALB ON ALB.album_id = MUS.album_id
    INNER JOIN SpotifyClone.Artista AS ART ON ALB.artista_id = ART.artista_id;
