CREATE VIEW cancoes_premium AS
SELECT so.title AS nome,
  COUNT(hs.song_id) AS reproducoes,
  FROM SpotifyClone.songs AS so
  INNER JOIN SpotifyClone.history AS hs
  ON so.song_id = hs.song_id
  INNER JOIN SpotifyClone.users AS usr 
  ON usr.user_id = hs.user_id
WHERE usr.subscription_id IN (2, 3)
GROUP BY nome
ORDER BY nome ASC;
