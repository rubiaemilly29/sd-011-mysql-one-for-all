-- CODIGO RETIRADO DO PR DA GABRIELA FEIJO
-- https://github.com/tryber/sd-011-mysql-one-for-all/pull/93
DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON usuarios
FOR EACH ROW
BEGIN
DELETE FROM historico_de_reproducoes
WHERE id_usuario = OLD.id_usuario;
DELETE FROM tabela_seguidores_artistas
WHERE id_usuario = OLD.id_usuario;
END $$
DELIMITER ;
