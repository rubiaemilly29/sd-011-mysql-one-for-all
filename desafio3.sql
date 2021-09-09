create view top_3_artistas as
select
a.nome_artista as 'artista',
count(*) as 'seguidores'
from seguindo as s
join usuario as u on u.usuario_id = s.usuario_id
join artista as a on a.artista_id = s.artista_id
group by a.nome_artista
order by seguindo desc, artista
limit 3
