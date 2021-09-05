CREATE VIEW top_2_hits_do_momento AS
	SELECT ss.name AS `cancao`,
    (SELECT COUNT(sh.song_id)
    FROM SpotifyClone.history_reproduction sh
    WHERE sh.song_id = ss.song_id) AS `reproducoes`
    FROM SpotifyClone.songs ss
    ORDER BY `reproducoes` DESC, `cancao`
    LIMIT 2;
