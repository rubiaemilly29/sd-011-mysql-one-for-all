CREATE VIEW cancoes_premium AS
SELECT ca.Cancao AS 'nome',
COUNT(*) AS 'reproducoes'
FROM SpotifyClone.Cancoes_album AS ca
INNER JOIN SpotifyClone.Historico_reproducoes AS hr
ON ca.CancaoID = hr.CancaoID
INNER JOIN SpotifyClone.Usuarios AS u
ON hr.UsuarioID = u.UsuarioID
INNER JOIN SpotifyClone.Planos AS p
ON u.PlanoID = p.PlanoID
WHERE p.Plano = 'universitário'
OR p.Plano = 'familiar'
GROUP BY `nome`
ORDER BY `nome`;
