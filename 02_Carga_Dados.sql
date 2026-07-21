'02_Carga_Dados.sql' 
insert into produto
(sku,descricao,grife,linha,tipo,marca,custo,preco)
values(
'Cal001',
'Tênis Esportivo Nike',
'Complementos',
'Calçados',
'Masculino',
'Nike',
180,
180*2.5
);
select * from produto;

insert into estoque
(id_produto,id_lj,quantidade)
values
(1,1,20),
(2,1,50),
(3,1,25),
(4,1,30),
(5,1,20),
(6,1,23),
(7,1,30),
(8,1,20),
(9,1,22),
(10,1,15);

'os demais dados das tabelas, 'produto', 'estoque' e todos os dados da tabela 'lojas' foram acrescentados utilizando o import csv'
