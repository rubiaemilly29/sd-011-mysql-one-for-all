create view historico_reproducao_usuarios as
select t1.usuario as `usuario`,
t3.musica as `musica`
from SpotifyClone.usuario as t1
inner join SpotifyClone.historico_de_reproducoes as t2
on t1.usuario_id = t2.usuario_id
inner join SpotifyClone.musica as t3
on t3.musica_id = t2.musica_id
order by `usuario`, `musica`;
