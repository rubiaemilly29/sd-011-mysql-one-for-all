DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN artist varchar(50))
BEGIN
select artista.nome_artista as 'artista',
album.nome_album as 'album'
from SpotifyClone.artista as artista
inner join SpotifyClone.album as album
on artista.artista_id = album.artista_id
where artista.nome_artista = artist
order by album.nome_album;
END;  $$
DELIMITER ;
CALL albuns_do_artista('Walter Phoenix');
