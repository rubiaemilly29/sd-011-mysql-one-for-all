create view historico_reproducao_usuarios as
select
u.nome_usuario as 'usuario',
m.nome_musica as 'nome'
from historico as h
join usuario as u on h.usuario_id = u.usuario_id
join musica as m on h.musica_id = m.musica_id
order by usuario, nome
