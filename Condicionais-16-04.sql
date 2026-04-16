select * from tabela_de_clientes;
select * from itens_notas_fiscais;

select * from notas_fiscais as NF
inner join itens_notas_fiscais as INF
on NF.NUMERO = INF.NUMERO;

#Seleção das colunas de interesse
select NF.CPF, NF.Data_Venda, INF.QUANTIDADE 
from notas_fiscais as NF
inner join itens_notas_fiscais as INF
on NF.NUMERO = INF.NUMERO;

#Manipular a data (ano e mes)
select NF.CPF,
date_format(NF.data_venda, '%Y-%M') as data_venda,
INF.QUANTIDADE
from notas_fiscais as NF
inner join itens_notas_fiscais as INF
on NF.NUMERO = INF.NUMERO;

/*16/04/26*/
/*Obter o volume de compras da tabela de clientes*/
select * from tabela_de_clientes;

select NF.CPF, TC.NOME, 
sum(TC.VOLUME_DE_COMPRA) as VOlUME_COMPRA,
date_format(NF.data_venda, '%Y-%M') as data_venda,
sum(INF.QUANTIDADE) as QUANTIDADE
from notas_fiscais as NF
inner join itens_notas_fiscais as INF
on NF.NUMERO = INF.NUMERO
inner join tabela_de_clientes as tc
on TC.CPF = NF.CPF
group by NF.CPF,DATA_VENDA;