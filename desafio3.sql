CREATE VIEW historico_reproducao_usuarios AS SELECT
SELECT u.nome_usuario AS usuario, m.nome_musicas AS nome
--  preciso fazer dois inner joins e depois juntas as tabelas. Os inners devem levar como base a tabela historico_de_reproducao.
FROM SpotifyClone.usuarios u
RIGHT JOIN historico_de_reproducoes hdr ON u.nome_usuario = hdr.musica_id;

SELECT nome_usuario FROM SpotifyClone.usuarios;
