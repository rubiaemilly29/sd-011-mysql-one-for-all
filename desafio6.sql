CREATE VIEW SpotifyClone.faturamento_atual AS
SELECT
CAST(MIN(value) AS DECIMAL(5,2)) AS 'faturamento_minimo',
CAST(MAX(value) AS DECIMAL(5,2)) AS 'faturamento_maximo',
CAST(AVG(value) AS DECIMAL(5,2)) AS 'faturamento_medio',
CAST(SUM(value) AS DECIMAL(5,2)) AS 'faturamento_total'
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
