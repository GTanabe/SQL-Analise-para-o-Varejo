# SQL | Análise de Estoque e Vendas no Varejo
Sobre o projeto
Este projeto foi desenvolvido com o objetivo de praticar modelagem de banco de dados e consultas SQL aplicadas ao varejo.
O banco de dados simula uma rede de lojas contendo informações sobre produtos, estoque e vendas. A partir dessa estrutura, foram desenvolvidas consultas para responder perguntas de negócio utilizando comandos fundamentais da linguagem SQL.
O foco deste projeto é demonstrar conhecimentos em SQL Básico e Intermediário, organização de banco de dados e análise de informações.

#  Estrutura do projeto
```
├── dados/
│   ├── produto.csv
│   ├── lojas.csv
│   ├── estoque.csv
│   └── vendas.csv
│
├── 01_Criacao_Banco.sql
├── 02_Carga_Dados.sql
├── 03_Analises_SQL.sql
└── README.md
```
# Banco de Dados

**Nome do banco:**

Base_pai

O banco é composto pelas seguintes tabelas:
```
|**Tabela**  | **Descrição**
|Produto | Cadastro de produtos
|Lojas   | Cadastro das lojas
|Estoque | Quantidade disponível de cada produto por loja
|Vendas  | Histórico de vendas por produto e loja
```
As tabelas estão relacionadas através de **Primary Keys** e **Foreign Keys**.

# Origem dos dados
Os dados utilizados neste projeto foram importados a partir de planilhas do Excel, simulando um cenário semelhante ao encontrado em empresas do varejo.
Essa abordagem foi utilizada para praticar a criação do banco, importação de dados e desenvolvimento de consultas SQL.

#  Conceitos praticados

Durante o desenvolvimento deste projeto foram utilizados:

- SELECT
- WHERE
- ORDER BY
- GROUP BY
- HAVING
- INNER JOIN
- COUNT
- SUM
- AVG
- MAX
- MIN
- Subqueries
- 
# 📈 Exemplos de análises

Algumas análises desenvolvidas no projeto:
- Produtos por marca
- Produtos por faixa de preço
- Preço médio por marca
- Produtos mais vendidos
- Quantidade de estoque por loja
- Valor do estoque por loja
- Estoque total por marca
- Marcas com maior volume em estoque
- Cobertura de estoque por produto e loja
- Produtos com baixa venda
- Ranking dos produtos mais vendidos

#  Objetivo
Este projeto faz parte do meu processo de aprendizado em SQL e tem como objetivo consolidar conhecimentos em modelagem de dados, consultas e análise de informações aplicadas ao varejo.
Novas versões serão desenvolvidas futuramente com consultas mais avançadas.

Desenvolvido por **Gabriela Tanabe**.
