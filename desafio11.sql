CREATE VIEW cancoes_premium AS
SELECT M.nome_cancoes AS nome, COUNT(HR.cancoes_id) AS reproducoes
FROM SpotifyClone.musicas M
INNER JOIN SpotifyClone.historico_reproducoes HR ON HR.cancoes_id = M.cancoes_id
INNER JOIN SpotifyClone.assinantes ASS ON ASS.id_assinante = HR.id_assinante
INNER JOIN SpotifyClone.planos P ON P.id_plano = ASS.id_plano
WHERE P.tipo_plano IN('Familiar', 'Universitãrio')
GROUP BY M.nome_cancoes
ORDER BY M.nome_cancoes;
