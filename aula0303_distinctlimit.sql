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