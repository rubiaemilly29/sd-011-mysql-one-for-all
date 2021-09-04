CREATE VIEW perfil_artistas AS
  SELECT
    art.artista_nome AS `artista`,
    alb.album_nome AS `album`,
    (
      SELECT COUNT(user_id)
      FROM SpotifyClone.seguindo_artistas AS seg
      WHERE alb.artista_id = seg.artista_id
    ) AS `seguidores`
  FROM SpotifyClone.albuns alb
  INNER JOIN SpotifyClone.artistas AS art
  ON alb.artista_id = art.artista_id
  ORDER BY `seguidores` DESC, `artista`, `album`;
