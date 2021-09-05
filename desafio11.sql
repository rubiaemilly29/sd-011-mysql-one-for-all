create view cancoes_premium as
select t1.musica as nome,
count(t2.musica_id) as reproducoes
from musica as t1
inner join historico_de_reproducoes as t2
on t1.musica_id = t2.musica_id
inner join usuario as t3
on t2.usuario_id = t3.usuario_id
where t3.plano_id = 2 or t3.plano_id = 3
group by t2.musica_id
order by nome;
