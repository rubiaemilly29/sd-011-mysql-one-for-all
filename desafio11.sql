CREATE VIEW cancoes_premium AS
SELECT S.song_name AS nome,
count(H.song_id) AS reproducoes
FROM songs AS S
INNER JOIN historic AS H ON H.song_id = S.song_id
INNER JOIN users AS U ON U.user_id = H.user_id
WHERE U.plan_id = 2 OR U.plan_id = 3
GROUP BY nome
ORDER BY nome;
