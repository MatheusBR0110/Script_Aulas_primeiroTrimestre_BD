#USO DA CONDIÇÃO DISTINCT

select distinct embalagem, tamanho 
from tabela_de_produtos;

select distinct embalagem, tamanho, sabor, PRECO_DE_LISTA
from tabela_de_produtos where sabor = 'laranja';

select distinct bairro, estado, cidade
from tabela_de_clientes where cidade = 'Rio de Janeiro';

#TESTANDO A CONDIÇÃO LIMIT

select * from tabela_de_produtos limit 2;

select * from notas_fiscais;
select * from notas_fiscais where DATA_VENDA = '2017/01/01' limit 5, 10;

#UTILIZANDO ORDER BY

select * from tabela_de_produtos order by sabor, embalagem;
select * from tabela_de_produtos order by preco_de_lista, embalagem;

select * from tabela_de_produtos order by preco_de_lista desc;

-- Qual ou quais foram as maiores vendas
-- do produto "Linha Refrescante - 1 Litro - Morango/limão"
-- em QUANTIDADE e PREÇO? 

select * from itens_notas_fiscais;
select * from tabela_de_produtos where NOME_DO_PRODUTO = "Linha Refrescante - 1 Litro - Morango/limão";
select * from itens_notas_fiscais where CODIGO_DO_PRODUTO = "1101035" order by QUANTIDADE desc, PRECO desc;

#AGRUPANDO OS RESULTADOS (GROUP BY)
select estado, sum(limite_de_credito) as preco_total
from tabela_de_clientes group by estado;

