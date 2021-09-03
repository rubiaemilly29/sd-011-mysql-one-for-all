CREATE VIEW `perfil_artistas` AS
SELECT
  Ar.artista AS `artista`,
  Al.album AS `album`,
  count(*) AS `seguidores`
FROM
  Usuario_Artista AS U_A
  INNER JOIN Artistas AS Ar ON U_A.artista_id = Ar.artista_id
  INNER JOIN Albuns AS Al ON Ar.artista_id = Al.artista_id
GROUP BY
  Al.album_id
ORDER BY
  `seguidores` DESC,
  `artista`,
  `album`;
