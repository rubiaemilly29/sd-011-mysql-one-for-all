CREATE VIEW faturamento_atual AS
SELECT MIN(PLANOS.plano_valor) AS 'faturamento_minimo',
MAX(PLANOS.plano_valor) AS 'faturamento_maximo',
ROUND(AVG(PLANOS.plano_valor),2) AS 'faturamento_medio',
SUM(PLANOS.plano_valor) AS 'faturamento_total'
FROM SpotifyClone.PLANOS
INNER JOIN SpotifyClone.USUARIOS
ON USUARIOS.usuario_plano = PLANOS.plano_id;
