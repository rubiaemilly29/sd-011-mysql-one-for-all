CREATE View `estatisticas_musicais` as
  select (select count(*) from Musicas) as `cancoes`,
  (select count(*) from Artistas) as `artistas`,
  (select count(*) from Albuns) as `albuns`;
