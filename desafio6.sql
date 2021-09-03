create view faturamento_atual as
select min(t1.valor) as `faturamento_minimo`,
max(t1.valor) as `faturamento_maximo`,
round(avg(t1.valor), 2) as `faturamento_medio`,
sum(t1.valor) as `faturamento_total`
from plano as t1
inner join usuario as t2
on t1.plano_id = t2.plano_id;
