CREATE VIEW cancoes_premium AS
SELECT MUSICAS.musica_nome AS 'nome',
COUNT(*) AS 'reproducoes'
FROM SpotifyClone.MUSICAS
INNER JOIN SpotifyClone.HISTORICO
ON MUSICAS.musica_id = HISTORICO.musica
INNER JOIN SpotifyClone.USUARIOS
ON USUARIOS.usuario_id = HISTORICO.usuario
WHERE USUARIOS.usuario_plano IN (2,3)
GROUP BY `nome`
ORDER BY `nome`;
