CREATE VIEW cancoes_premium AS
SELECT s.title AS nome, COUNT(*)AS reproducoes
FROM SpotifyClone.songs AS s
INNER JOIN SpotifyClone.listeningHistory AS p
ON s.songId = p.songId
INNER JOIN SpotifyClone.users AS u
ON p.userId = u.userId
WHERE u.planId IN(2, 3)
GROUP BY nome
ORDER BY nome ASC;
