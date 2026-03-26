#Usando max, count e min
select distinct EMBALAGEM, max(PRECO_DE_LISTA) as PRECO_TOTAL from tabela_de_produtos group by EMBALAGEM;

select embalagem, count(*) as contador from tabela_de_produtos group by EMBALAGEM;

#Quantos itens de venda existem para o produto '1101035'?
select max(QUANTIDADE) from itens_notas_fiscais where CODIGO_DO_PRODUTO = '1101035';

select count(*) from itens_notas_fiscais where CODIGO_DO_PRODUTO = '1101035' and quantidade = 99; 
#RESPOSTA: 99 itens de venda existem para o produto '1101035'.

/*case
	when <condicao> then "texto"
    when... then
end as caso;*/

/*Classificar o valor de produtos*/
select nome_do_produto, preco_de_lista,
case
	when preco_de_lista >= 14 then "produto caro"
    when preco_de_lista >= 7 and preco_de_lista < 14 then "produto em conta"
    else "produto barato"
end as status_preco from tabela_de_produtos
order by PRECO_DE_LISTA;

/*Veja o ano de nascimento dos clientes e classifique-os como:
Nascidos antes de 1990 são velhos, nascidos entre
1990 e 1995 são jovens e nascidos depois de 1995 são crianças.
Listem os nomes dos clientes e a classificação*/
select * from tabela_de_clientes;
select nome, data_de_nascimento,
case
	when data_de_nascimento <= "1990-01-01" then "Idoso"
    when data_de_nascimento <= "1995-01-01" and data_de_nascimento > "1990-01-01" then "Jovem"
    else "Criança"

end as status_etariedade from tabela_de_clientes order by DATA_DE_NASCIMENTO;