DELIMITER $$
create trigger trigger_usuario_delete
before delete on usuario
for each row
begin
delete from historico
where old.usuario_id = usuario_id;
DELETE FROM seguindo
where old.usuario_id = usuario_id;
end $$
DELIMITER;
