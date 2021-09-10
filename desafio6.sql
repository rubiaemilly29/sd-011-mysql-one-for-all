CREATE VIEW faturamento_atual AS
SELECT
(SELECT MIN(price) FROM SpotifyClone.plans) AS faturamento_minimo,
(SELECT MAX(price) FROM SpotifyClone.plans) AS faturamento_maximo,
(SELECT ROUND(AVG(price), 2) FROM SpotifyClone.plans) AS faturamento_medio,
(SELECT SUM(price) FROM SpotifyClone.plans) AS faturamento_total;

SELECT * FROM faturamento_atual;