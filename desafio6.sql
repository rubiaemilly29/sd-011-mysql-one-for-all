CREATE VIEW SpotifyClone.faturamento_atual AS
SELECT
  CAST(MIN(P.plan_price) AS DECIMAL(65, 2)) AS faturamento_minimo,
  CAST(MAX(P.plan_price) AS DECIMAL(65, 2)) AS faturamento_maximo,
  CAST(AVG(P.plan_price) AS DECIMAL(65, 2)) AS faturamento_medio,
  CAST(SUM(P.plan_price) AS DECIMAL(65, 2)) AS faturamento_total
FROM SpotifyClone.plans AS P
INNER JOIN SpotifyClone.users AS U
  ON U.plan_id = P.plan_id;
  
-- HOW TO USE CAST TO CONVERT VALUE -> https://www.w3schools.com/sql/func_sqlserver_cast.asp
