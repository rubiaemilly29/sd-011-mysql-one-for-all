CREATE VIEW
faturamento_atual
AS
SELECT
MIN(cust_plan) AS "faturamento_minimo",
MAX(cust_plan) AS "faturamento_maximo",
ROUND(SUM(cust_plan)/4, 2) AS "faturamento_medio",
SUM(cust_plan) AS "faturamento_total"
FROM SpotifyClone.plan;
