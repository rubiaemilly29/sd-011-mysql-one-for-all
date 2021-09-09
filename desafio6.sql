CREATE VIEW faturamento_atual AS
SELECT MIN(pla.Value) AS faturamento_minimo,
MAX(pla.Value) AS faturamento_maximo,
ROUND(AVG(pla.Value), 2) AS faturamento_medio,
SUM(pla.Value) AS faturamento_total
FROM plans AS pla
INNER JOIN users AS us
ON pla.ID = us.PlanID;
