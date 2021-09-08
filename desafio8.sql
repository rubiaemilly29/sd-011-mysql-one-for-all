--  Precisa ter um delimiter
--  nome CREATE TRIGGER trigger_usuario_delete
--  Comando before ou after e onde ele é aplicado
--  Para quais linhas
--  Precisa ter begin
--  O comando e onde ele deve ser feito. Usar o id comparando o old. Repete quantas vezes for necessario
--  Comando end e o delimiter
-- volta o delimiter do jeito que era
-- DELETE FROm SpotifyClone.usuarios WHERE nome_usuario = 'Cintia';
DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON SpotifyClone.usuarios
FOR EACH ROW
BEGIN
DELETE FROM SpotifyClone.historico_de_reproducoes
WHERE usuario_id = OLD.usuario_id;
DELETE FROM SpotifyClone.seguindo_artistas
WHERE usuario_id = OLD.usuario_id;
END $$

DELIMITER ;
