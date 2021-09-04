CREATE VIEW cancoes_premium AS 
  SELECT (
    SELECT cancao_nome
    FROM SpotifyClone.cancoes
    WHERE cancao_id = hist.cancao_id
  ) AS `nome`,
  COUNT(user_id) AS `reproducoes`
  FROM SpotifyClone.historico_de_reproducoes AS hist
  WHERE hist.user_id IN (
    SELECT user_id
    FROM SpotifyClone.usuarios
    WHERE plano_id != 1
  )
  GROUP BY `nome`
  ORDER BY `nome`;
