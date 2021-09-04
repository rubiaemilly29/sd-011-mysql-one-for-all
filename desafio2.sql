-- Desafio 2
-- Crie uma VIEW chamada estatisticas_musicais que exiba três colunas:

-- A primeira coluna deve exibir a quantidade total de canções. Dê a essa coluna o alias "cancoes".

-- A segunda coluna deve exibir a quantidade total de artistas e deverá ter o alias "artistas".

-- A terceira coluna deve exibir a quantidade de álbuns e deverá ter o alias "albuns".

CREATE VIEW estatisticas_musicais AS
    SELECT 
        COUNT(MUS.musica_id) AS cancoes,
        COUNT(ART.artista_id) AS artistas,
        COUNT(ALB.album_id) AS albuns
    FROM SpotifyClone.Album AS ALB
    INNER JOIN SpotifyClone.Artista AS ART ON ALB.artista_id = ART.artista_id
    INNER JOIN SpotifyClone.Musica AS MUS ON ALB.album_id = MUS.album_id;