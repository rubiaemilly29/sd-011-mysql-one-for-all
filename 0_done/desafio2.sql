CREATE VIEW SpotifyClone.estatisticas_musicais AS
SELECT COUNT(ALO.Songs_id) as cancoes,
COUNT(Distinct A.Artist_id) as artistas,
COUNT(Distinct AB.Album_id) as albuns
FROM SpotifyClone.AllSongs ALO
INNER JOIN SpotifyClone.Artists_Songs ARO
ON ALO.Songs_id = ARO.Songs_id
INNER JOIN SpotifyClone.Artists A
ON A.Artist_id = ARO.Artist_id
INNER JOIN SpotifyClone.Albums_Songs AB
ON AB.Songs_id = ARO.Songs_id;
