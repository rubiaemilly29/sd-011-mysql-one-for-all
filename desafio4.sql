CREATE VIEW SpotifyClone.historico_reproducao_usuarios AS
  SELECT a.artist_name AS artista, COUNT(*) AS seguidores FROM SpotifyClone.followers AS f
  JOIN SpotifyClone.artists AS a ON a.artist_id = f.artist_id
  GROUP BY artista
  ORDER BY seguidores DESC, artista
  LIMIT 3;
