DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
AFTER DELETE ON SpotifyClone.Usuario
FOR EACH ROW
BEGIN
  DELETE FROM SpotifyClone.Seguindo_Artista AS s_a
  WHERE s_a.usuario_id = old.id;
  DELETE FROM SpotifyClone.Historico_De_Reproducoes AS h_d_r
  WHERE h_d_r.usuario_id = old.id;
END $$
DELIMITER ;
