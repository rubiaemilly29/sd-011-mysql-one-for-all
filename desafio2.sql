CREATE VIEW estatisticas_musicais AS
SELECT COUNT(ca.id_cancoes) AS 'cancoes',
  (
    SELECT COUNT(ar.id_artistas)
    FROM SpotifyClone.artistas AS ar
  ) AS 'artistas',
  (
    SELECT COUNT(ab.id_albuns)
    FROM SpotifyClone.albuns AS ab
  ) AS 'albuns'
FROM SpotifyClone.cancoes AS ca;
