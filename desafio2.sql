CREATE VIEW SpotifyClone.estatisticas_musicais AS
SELECT COUNT(S.song_id) AS cancoes,
COUNT(DISTINCT A.artist_id) AS artistas,
COUNT(DISTINCT S.album_id) AS albuns
FROM SpotifyClone.songs S
INNER JOIN SpotifyClone.albums A
ON A.album_id = S.album_id;
