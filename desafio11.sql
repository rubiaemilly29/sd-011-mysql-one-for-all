CREATE VIEW cancoes_premium AS
SELECT
C.song AS 'nome',
COUNT(*) AS 'reproducoes'
FROM
SpotifyClone.Usuario AS U
INNER JOIN
SpotifyClone.Planos AS P ON U.plano_id = P.id
INNER JOIN
SpotifyClone.Historico_De_Reproducoes AS hdr ON U.id = hdr.usuario_id
INNER JOIN
SpotifyClone.Cancoes AS C ON hdr.cancoes_id = C.id
WHERE P.tipo IN ('familiar', 'universitário')
GROUP BY C.song
ORDER BY C.song;
