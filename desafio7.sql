CREATE VIEW perfil_artistas AS
SELECT
AR.nome AS 'artista',
AL.nome AS 'album',
F.seguidores AS 'seguidores'
FROM SpotifyClone.album as AL
LEFT JOIN SpotifyClone.artista AS AR
ON AL.artista_id = AR.artista_id
LEFT JOIN (
SELECT
A.artista_id AS 'artista_id',
COUNT(AC.usuario_id) AS seguidores
FROM SpotifyClone.artista_seguidores AS AC
LEFT JOIN SpotifyClone.artista AS A
ON AC.artista_id = A.artista_id
GROUP BY A.artista_id
) AS F
ON AL.artista_id = F.artista_id
ORDER BY F.seguidores DESC, AR.nome, AL.nome;
