CREATE VIEW cancoes_premium AS
SELECT
s.song_name AS 'nome',
COUNT(s.song_name) AS 'reproducoes'
FROM user AS u
INNER JOIN user_history AS uh ON u.user_id = uh.user_id
INNER JOIN plan AS p ON u.plan_id = p.plan_id
INNER JOIN songs AS s ON s.song_id = uh.song_id
GROUP BY s.song_name, p.plan_name
HAVING p.plan_name <> 'gratuito'
ORDER BY s.song_name;
