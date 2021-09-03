CREATE VIEW faturamento_atual AS
SELECT MIN(Price) faturamento_minimo,
MAX(Price) faturamento_maximo,
ROUND(AVG(Price), 2) faturamento_medio,
SUM(Price) faturamento_total
FROM SpotifyClone.Plans P
INNER JOIN SpotifyClone.User_plan UP
ON P.Plan_id = UP.Plan_id;
