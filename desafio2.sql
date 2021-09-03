CREATE VIEW `estatisticas_musicais` AS
SELECT
  (
    SELECT
      count(*)
    FROM
      Musicas
  ) AS `cancoes`,
  (
    SELECT
      count(*)
    FROM
      Artistas
  ) AS `artistas`,
  (
    SELECT
      count(*)
    FROM
      Albuns
  ) AS `albuns`;
