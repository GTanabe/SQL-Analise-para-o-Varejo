# 01_Criacao_Banco.sql
Create database Base_Pai;
use Base_pai;
Create Table produto(
id_produto int not null auto_increment,
sku varchar (20) not null,
descricao varchar (50) not null,
grife varchar (50) not null,
linha varchar (50) not null,
tipo varchar (50) not null,
marca varchar (50) not null, 
custo decimal (10,2) not null,
preco decimal (10,2) not null,
primary key (id_produto)
);

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
use Base_pai;
Create table lojas (
id_lj int not null auto_increment,
nome varchar (50) not null,
regiao varchar (50)not null,
clima varchar (50)not null,
cluster varchar (50)not null,
primary key(id_lj)
);
select * from lojas;

' Os demais dados de produto e de loja foi feita por import csv '

Create table estoque (
id_estoque int not null auto_increment,
id_produto int,
id_lj int,
qtde_est int,
primary key (id_estoque),
foreign key (id_produto) references produto(id_produto),
foreign key (id_lj) references lojas(id_lj)
);
select * from estoque;

Create table vendas(
id_venda int not null auto_increment,
id_produto int not null,
id_lj int not null,
qtde_vd int not null,
data_venda Date not null,
primary key (id_venda),
foreign key (id_produto) references produto(id_produto),
foreign key (id_lj) references lojas(id_lj)
);
select * from vendas;

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

'Os demais dados de estoque e de venda foi feita por import csv'
  
use base_pai;
select * from estoque;
select * from vendas;
select * from produto;
select * from lojas;
