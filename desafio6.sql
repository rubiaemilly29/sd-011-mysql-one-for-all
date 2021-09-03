CREATE VIEW faturamento_atual AS
  SELECT
    ROUND(MIN(valor), 2) AS 'faturamento_minimo',
    ROUND(MAX(valor), 2) AS 'faturamento_maximo',
    ROUND(AVG(valor), 2) AS 'faturamento_medio',
    ROUND(SUM(valor), 2) AS 'faturamento_total'
  FROM
    (
      SELECT
        u.usuario_id,
        p.valor
      FROM
        usuario AS u
      INNER JOIN
        plano AS p
        ON p.plano_id = u.plano_id
    ) AS faturamento;
