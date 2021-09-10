CREATE VIEW historico_reproducao_usuarios AS
SELECT u.name AS usuario, s.title AS nome
FROM SpotifyClone.users AS u
INNER JOIN SpotifyClone.listeningHistory AS h 
ON u.userId = h.userId
INNER JOIN SpotifyClone.songs AS s
ON s.songId = h.songId
ORDER BY usuario ASC, nome ASC;
