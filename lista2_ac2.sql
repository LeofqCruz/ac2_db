insert into cliente (rg, nome, endereco, bairro, cidade, estado, sexo) values
('221232348', 'Dino da Silva Sauro', 'Rua Joaquim Silveira,34', 'Jd. Romano', 'São Roque', 'SP', 'M');

insert into locacao (cod_cliente, cod_filme, data_retirada)
values (11, 1, now());

insert into locacao (cod_cliente, cod_filme, data_retirada)
values (11, 2, now());

insert into filme (filme, cod_categoria, diretor, valor_locacao, reservada)
values ('Missão Impossível: 3', 1, 'J.J. Abrams', 7.00, 'N');

insert into locacao (cod_cliente, cod_filme, data_retirada)
values (11, 2, now());

set sql_safe_updates = 0;

update categoria set nome_categoria = 'Animação' where nome_categoria = 'Desenho';

update filme set reservada = 'S' where diretor = 'Terry Gilliam';

update cliente
set endereco = 'Rua Guilherme Orlando, 333',
    bairro = 'Jardim Santa Rosália',
    telefone = '1532145543'
where nome = 'Rafael Nunes Sales';

update categoria
set nome_categoria = UPPER(nome_categoria);

update filme
set valor_locacao = valor_locacao * 0.5
where filme in ('A Mexicana', 'A Verdade Nua e Crua', 'Austrália');

delete from categoria
where cod_categoria not in (select distinct cod_categoria from filme);

insert into cliente (rg, nome, endereco, bairro, cidade, estado, sexo) values
('221232348', 'Leo Cruz', 'Rua Nelson de Oliveira,60', 'Jd. Guadalajara', 'Sorocaba', 'SP', 'M');
