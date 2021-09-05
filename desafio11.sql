CREATE VIEW cancoes_premium AS
  SELECT m.nome_musica AS nome, COUNT(hr.usuario_id) AS reproducoes
  FROM SpotifyClone.musicas AS m
  INNER JOIN SpotifyClone.historico_de_reproducoes AS hr
  ON m.musica_id = hr.musica_id
  INNER JOIN SpotifyClone.usuarios AS u
  ON u.usuario_id = hr.usuario_id
  INNER JOIN SpotifyClone.planos AS p
  ON u.plano_id = p.plano_id
  WHERE p.plano = 'Universitátio' AND p.plano = 'Familiar'
  GROUP BY `nome`
  ORDER BY `nome`;

SELECT * FROM cancoes_premium;

-- DROP VIEW cancoes_premium;