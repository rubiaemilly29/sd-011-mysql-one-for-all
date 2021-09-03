CREATE VIEW cancoes_premium AS
SELECT
m.titulo AS 'nome',
COUNT(h.musica_id) AS 'reproducoes'
FROM SpotifyClone.musicas AS m
INNER JOIN SpotifyClone.historico_de_reproducoes AS h
ON m.musica_id = h.musica_id
INNER JOIN SpotifyClone.user AS u
ON u.usuario_id = h.usuario_id
INNER JOIN SpotifyClone.plano AS p
ON u.plano_id = p.plano_id
WHERE u.plano_id > 1
GROUP BY `nome`
ORDER BY `nome` ASC;