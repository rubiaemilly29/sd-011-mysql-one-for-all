CREATE VIEW SpotifyClone.faturamento_atual AS
SELECT
ROUND(MIN(value), 2) AS 'faturamento_minimo',
ROUND(MAX(value), 2) AS 'faturamento_maximo',
ROUND(AVG(value), 2) AS 'faturamento_medio',
ROUND(SUM(value), 2) AS 'faturamento_total'
FROM
(
SELECT
u.user_id,
p.value
FROM
SpotifyClone.Plans AS p
INNER JOIN
SpotifyClone.Users AS u
ON p.plan_id = u.plan_id
) AS profit