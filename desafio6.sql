create view faturamento_atual as
select
(select min(valor_plano) from planos) as  "faturamento_minimo",
(select max(valor_plano) from planos) as "faturamento_maximo",
(select round(avg(valor_plano), 2) from planos) as "faturamento_medio",
(select sum(valor_plano) from planos) as "faturamento_total"
