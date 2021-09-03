CREATE VIEW cancoes_premium AS SELECT musica AS nome, COUNT(*) AS reproducoes FROM SpotifyClone.usuario_musica UM
INNER JOIN SpotifyClone.musicas M ON M.musica_id = UM.musica_id
INNER JOIN SpotifyClone.usuarios U ON U.usuario_id = UM.usuario_id
INNER JOIN SpotifyClone.planos P ON P.plano_id = U.plano_id
WHERE P.plano IN('familiar', 'universitário')
GROUP BY M.musica_id
ORDER BY `nome`;