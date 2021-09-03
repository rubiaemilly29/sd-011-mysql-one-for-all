CREATE VIEW faturamento_atual AS
SELECT
ROUND(MIN(plan_price),2) as faturamento_minimo,
ROUND(MAX(plan_price),2) as faturamento_maximo,
ROUND((SUM(plan_price)/4),2) as faturamento_medio,
SUM(plan_price) as faturamento_total
from SpotifyClone.PLANS;
