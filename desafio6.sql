CREATE VIEW faturamento_atual AS
SELECT ROUND(MIN(SS.subscription_value),2) AS 'faturamento_minimo',
ROUND(MAX(SS.subscription_value), 2) AS 'faturamento_maximo',
(
SELECT ROUND(AVG(S.subscription_value), 2)
FROM SpotifyClone.Spotify_Subscription S
INNER JOIN SpotifyClone.Users U
ON S.subscription_id = U.subscription_id
) AS 'faturamento_medio',
(
SELECT ROUND(SUM(S.subscription_value), 2)
FROM SpotifyClone.Spotify_Subscription S
INNER JOIN SpotifyClone.Users U
ON S.subscription_id = U.subscription_id
) AS 'faturamento_total'
FROM SpotifyClone.Spotify_Subscription SS;
