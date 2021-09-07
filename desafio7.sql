CREATE VIEW perfil_artistas AS (
  SELECT
    art.artista AS artista,
    alb.album AS album,
    COUNT(sa.artista_id) AS seguidores
    FROM SpotifyClone.artistas AS art
  INNER JOIN SpotifyClone.albuns AS alb
  ON art.artista_id = alb.artista_id
  INNER JOIN SpotifyClone.seguindo_artistas AS sa
  ON art.artista_id = sa.artista_id
  GROUP BY album, artista
  ORDER BY
  seguidores DESC,
  artista ASC,
  album ASC
);
