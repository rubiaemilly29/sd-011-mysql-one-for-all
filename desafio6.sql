create view faturamento_atual as
select
min(valor_plano)  as  "faturamento_minimo",
max(valor_plano)  as "faturamento_maximo",
round(avg(valor_plano), 2) as "faturamento_medio",
sum(valor_plano)  as "faturamento_total"
from planos as p
inner join usuario as u on u.usuario_id = p.plano_id;
