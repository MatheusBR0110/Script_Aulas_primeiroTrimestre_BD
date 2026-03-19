#Usando max, count e min
select distinct EMBALAGEM, max(PRECO_DE_LISTA) as PRECO_TOTAL from tabela_de_produtos group by EMBALAGEM;

select embalagem, count(*) as contador from tabela_de_produtos group by EMBALAGEM;

#Quantos itens de venda existem para o produto '1101035'?
select max(QUANTIDADE) from itens_notas_fiscais where CODIGO_DO_PRODUTO = '1101035';

select count(*) from itens_notas_fiscais where CODIGO_DO_PRODUTO = '1101035' and quantidade = 99; 
#RESPOSTA: 99 itens de venda existem para o produto '1101035'.

