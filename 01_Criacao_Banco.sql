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
  
use base_pai;
select * from estoque;
select * from vendas;
select * from produto;
select * from lojas;
