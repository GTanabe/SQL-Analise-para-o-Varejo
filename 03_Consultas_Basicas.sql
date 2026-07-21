'03_Consultas_Basicas.sql'

  /*
Consulta 01
Produtos da marca 'Andritex'
*/
select * from produto
where marca='Andritex';

/*
Consulta 02
Produtos da linha 'Calçados'
*/
select * from produto
where linha='Calcados'

  /*
Consulta 03
Produtos da marca'Nike' com preço acima de R$250
*/
select * from produto
where marca= 'Nike' and preco>250

  /*
Consulta 04
5 produtos com maior preço de venda em ordem decrescente
*/
select * from produto
order by preco desc;
limit 5;

/*
Consulta 05
Marcas disponíveis sem repetição
*/
select distinct marca from produto;

/*
Consulta 06
Preço médio por marca
*/
select marca,
AVG(preco) as preco_medio
from produto
group by marca;

/*
Consulta 07
Maior preço
*/
select max(preco) from produto;

/*
Consulta 08
Menor preço
*/
select min(preco) from produto;

/*
Consulta 09
Quantidade de estoque por loja
*/
select
l.nome,
Sum(e.qtde_est) 'qtde est'
from estoque e
inner join lojas l
on e.id_lj = l.id_lj
Group by l.nome;

/*
Consulta 10
Valor total do estoque por loja por ordem decrescente
*/
select l.nome,
sum(e.qtde_est*p.custo) as valor_est
from estoque e
inner join produto p
on e.id_produto=p.id_produto
inner join lojas l
on e.id_lj=l.id.lj
group by l.nome
order by valor_est desc;

/*
Consulta 11
Total de estoque por marca
*/
select
Sum(e.qtde_est) as 'qtde est',
p.marca
from estoque e
inner join produto p
on e.id_produto = p.id_produto
Group by p.marca;

/*
Consulta 12
Marcas com mais de 1.000 unidades em estoque
*/
select
p.marca,
Sum(e.qtde_est) as qtde_est
from estoque e
inner join produto p
on e.id_produto = p.id_produto
Group by p.marca
having Sum(e.qtde_est)>1000;

/*
Consulta 13
Os 10 produtos mais vendidos
*/
select 
p.descricao,
sum(v.qtde_vd) as Qtde
from produto p
inner join vendas v
on p.id_produto = v.id_produto
group by p.descricao
order by Qtde desc
limit 10;

/*
Consulta 14
Cobertura de estoque por produto e loja
*/
select
l.nome,
e.qtde_est,
v.total_vendido,
e.qtde_est/v.total_vendido as Cob
from estoque e
inner join (
select
id_produto,
id_lj,
SUM(qtde_vd) as total_vendido
from vendas
group by id_produto,id_lj
) v
on e.id_produto = v.id_produto
AND e.id_lj = v.id_lj
INNER JOIN lojas l
ON e.id_lj = l.id_lj;
/*
Consulta 15
Vendas abaixo de 20 peças por produto e loja
*/
select
p.descricao,
l.nome,
v.Venda
from produto p
inner join (select id_produto, Id_lj,
sum(qtde_vd) as Venda
from vendas group by id_produto,id_lj) v
on v.id_produto=p.id_produto
inner join lojas l
on l.id_lj = v.id_lj
where v.Venda < 20;
/*
Consulta 16
Produtos entre R$100 e R$300
*/
select descricao,
preco
from produto
where preco between 100 and 300
order by preco desc;



