CREATE VIEW SpotifyClone.faturamento_atual AS
SELECT
(SELECT subs_price FROM SpotifyClone.subscription_plan ORDER BY subs_price ASC LIMIT 1) AS 'faturamento_minimo',
(SELECT subs_price FROM SpotifyClone.subscription_plan ORDER BY subs_price DESC LIMIT 1) AS 'faturamento_maximo',
(SELECT ROUND(AVG(sp.subs_price), 2)
FROM SpotifyClone.users AS u
INNER JOIN SpotifyClone.subscription_plan AS sp
ON  u.user_subs = sp.subs_id
) AS 'faturamento_medio',
(SELECT SUM(sp.subs_price)
FROM SpotifyClone.users AS u
INNER JOIN SpotifyClone.subscription_plan AS sp
ON  u.user_subs = sp.subs_id
) AS 'faturamento_total';
