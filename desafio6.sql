CREATE VIEW SpotifyClone.faturamento_atual AS
SELECT
(SELECT FORMAT(subs_price, 2) FROM SpotifyClone.subscription_plan ORDER BY subs_price ASC LIMIT 1) AS 'faturamento_minimo',
(SELECT FORMAT(subs_price, 2) FROM SpotifyClone.subscription_plan ORDER BY subs_price DESC LIMIT 1) AS 'faturamento_maximo',
(SELECT FORMAT(ROUND(AVG(sp.subs_price), 2), 2)
FROM SpotifyClone.users AS u
INNER JOIN SpotifyClone.subscription_plan AS sp
ON  u.user_subs = sp.subs_id
) AS 'faturamento_medio',
(SELECT FORMAT(SUM(sp.subs_price), 2)
FROM SpotifyClone.users AS u
INNER JOIN SpotifyClone.subscription_plan AS sp
ON  u.user_subs = sp.subs_id
) AS 'faturamento_total';
