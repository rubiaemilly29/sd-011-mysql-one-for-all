create view top_3_artistas as
select
a.nome_artista as 'artista',
count(a.artista_id) as 'seguidores'
from artista as a
inner join seguindo as s on s.artista_id = a.artista_id
group by s.artista_id
order by seguidores desc, artista
limit 3;
