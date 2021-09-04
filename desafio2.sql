USE SpotifyClone;
CREATE VIEW estatisticas_musicais AS
    SELECT COUNT(c.cancao_id) AS cancoes, COUNT(DISTINCT ar.artista_id) AS artistas, COUNT(DISTINCT a.album_id) AS albuns
    FROM albuns a
    INNER JOIN cancoes c ON a.album_id = c.album_id
    INNER JOIN artistas ar ON ar.artista_id = a.artista_id;
