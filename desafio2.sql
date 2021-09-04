CREATE VIEW estatisticas_musicais AS
    SELECT COUNT(c.cancao_id) AS cancoes, COUNT(DISTINCT ar.artista_id) AS artistas, COUNT(DISTINCT a.album_id) AS albuns
    FROM SpotifyClone.albuns a
    INNER JOIN SpotifyClone.cancoes c ON a.album_id = c.album_id
    INNER JOIN SpotifyClone.artistas ar ON ar.artista_id = a.artista_id;
