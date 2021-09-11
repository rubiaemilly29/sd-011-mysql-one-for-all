CREATE VIEW historico_reproducao_usuarios AS
SELECT nome AS usuario, nome_cancoes AS nome
FROM SpotifyClone.historico_reproducoes HR
INNER JOIN SpotifyClone.musicas M ON M.cancoes_id = HR.cancoes_id
INNER JOIN SpotifyClone.assinantes ASS ON ASS.id_assinante = HR.id_assinante
ORDER BY ASS.nome, M.nome_cancoes;
