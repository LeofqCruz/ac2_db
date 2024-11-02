select cod_filme, count(*) as filmes_alugados
from locacao group by cod_filme;

select f.filme, l.data_devolucao
from filme f
inner join categoria c on f.cod_categoria = c.cod_categoria
inner join locacao l on f.cod_filme = l.cod_filme
inner join cliente cl on l.cod_cliente = cl.cod_cliente
where c.nome_categoria = "Ação" and f.diretor = "Richard Donner" and cl.nome = "Abimael SIlva";

select 
filme as nome_filme, 
valor_locacao, valor_locacao * 0.1 as desconto, 
valor_locacao - (valor_locacao * 0.1) as valor_final
FROM 
    filme;

select distinct f.filme from filme f
inner join locacao l on f.cod_filme = l.cod_filme
inner join cliente cl on l.cod_cliente = cl.cod_cliente
where cl.cidade = "Votorantim";

select f.filme from filme f
inner join locacao l on f.cod_filme = l.cod_filme
order by l.data_retirada limit 1;

select f.filme, sum(f.valor_locacao) as lucro_total
from filme f 
inner join locacao l on f.cod_filme = l.cod_filme
where f.filme = "A vida é bela" group by f.filme;

select f.diretor, count(*) as quantidade_alugadas
from filme f
inner join locacao l on f.cod_filme = l.cod_filme
group by f.diretor;

select c.nome_categoria
from filme f
inner join categoria c on f.cod_categoria = c.cod_categoria
inner join locacao l on f.cod_filme = l.cod_filme
inner join cliente cl on l.cod_cliente = cl.cod_cliente
WHERE cl.nome = 'Maria Chiquinha';

select cl.nome, cl.telefone from cliente cl
inner join locacao l on cl.cod_cliente = l.cod_cliente
inner join filme f on l.cod_cliente= f.cod_filme
where f.filme = "Constantine";

select c.nome_categoria
from categoria c
left join filme f on c.cod_categoria = f.cod_categoria
where f.cod_categoria is null;

select c.cod_categoria, c.nome_categoria from categoria c;