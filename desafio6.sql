CREATE VIEW faturamento_atual AS
SELECT 
MIN(Plano_Valor) AS faturamento_minimo, 
MAX(Plano_Valor) AS faturamento_maximo,
ROUND(AVG(Plano_Valor), 2) AS faturamento_medio,
SUM(Plano_Valor) AS faturamento_total FROM SpotifyClone.Plano AS PL
INNER JOIN SpotifyClone.Usuario AS US
ON PL.Plano_ID = US.Plano_ID;
