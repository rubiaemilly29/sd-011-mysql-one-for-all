CREATE VIEW cancoes_premium AS
  SELECT m.nome_musica AS nome, COUNT(*) AS reproducoes
  FROM SpotifyClone.usuarios AS u
  INNER JOIN SpotifyClone.planos AS p
  ON u.plano_id = p.plano_id
  WHERE p.plano = 'Universitátio' AND p.plano = 'Familiar'
  INNER JOIN SpotifyClone.historico_de_reproducoes AS hr
  ON u.usuario_id = hr.usuario_id
  GROUP BY `nome`
  ORDER BY `nome`;

-- DROP VIEW cancoes_premium;
