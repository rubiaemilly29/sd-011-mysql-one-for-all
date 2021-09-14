CREATE VIEW perfil_artistas AS
SELECT ar.nome_artista AS 'artista',
  ab.nome_album AS 'album',
  COUNT(fl.id_artistas) AS 'seguidores'
FROM SpotifyClone.albuns AS ab
  INNER JOIN SpotifyClone.artistas AS ar ON ab.id_artistas = ar.id_artistas
  INNER JOIN SpotifyClone.seguindo_artistas AS fl ON ab.id_artistas = fl.id_artistas
GROUP BY ab.id_albuns
ORDER BY seguidores DESC,
  artista ASC,
  album ASC;
