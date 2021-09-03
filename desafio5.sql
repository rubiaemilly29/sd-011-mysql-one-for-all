create view top_2_hits_do_momento as
select t2.musica as `cancao`,
count(t1.musica_id) as `reproducoes`
from SpotifyClone.historico_de_reproducoes as t1
inner join SpotifyClone.musica as t2
on t1.musica_id = t2.musica_id
group by t1.musica_id
order by `reproducoes` desc, `cancao` limit 2;
