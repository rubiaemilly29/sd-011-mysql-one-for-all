DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN nameArtist VARCHAR(100))
BEGIN
SELECT ART.c_artist AS artista,
ABM.c_album AS album
FROM t_artists AS ART
INNER JOIN t_album AS ABM
ON ABM.fk_id_artist = ART.id_artist
WHERE ART.c_artist = nameArtist
ORDER BY album ASC;
END $$
DELIMITER ;
