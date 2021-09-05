CREATE VIEW cancoes_premium AS
  SELECT m.nome_musica AS nome, COUNT(*) AS reproducoes
  FROM SpotifyClone.usuarios AS u
  INNER JOIN SpotifyClone.historico_de_reproducoes AS hr
  ON u.usuario_id = hr.usuario_id
  INNER JOIN SpotifyClone.musicas AS m
  ON m.musica_id = hr.musica_id
  INNER JOIN SpotifyClone.planos AS p
  ON u.plano_id = p.plano_id
  WHERE p.plano IN ('Familiar', 'Universitário')
  GROUP BY `nome`
  ORDER BY `nome`;
