DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON SpotifyClone.Usuario
FOR EACH ROW
BEGIN
  DELETE FROM SpotifyClone.Seguindo_Artista AS s_a
  WHERE OLD.id = s_a.usuario_id;
  DELETE FROM SpotifyClone.Historico_De_Reproducoes AS h_d_r
  WHERE OLD.id = h_d_r.usuario_id;
END $$
DELIMITER ;
