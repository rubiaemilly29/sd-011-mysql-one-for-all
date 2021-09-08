CREATE VIEW historico_reproducao_usuarios AS
SELECT us.UserName AS usuario,
son.SongName AS nome
FROM users AS us
INNER JOIN history AS his
ON his.UserID = us.ID
INNER JOIN songs AS son
ON his.SongID = son.ID
ORDER BY usuario, nome;
