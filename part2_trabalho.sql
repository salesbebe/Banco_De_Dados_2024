insert into cliente(nome,endereco,email,celular,nascimento) values ( "Giovanna Camargo de souza","Rua Garcia de Azevedo N75","gicamargo@gmail.com","11 95786-6421","1999-03-19" );

insert into cliente (nome,endereco,email,celular,nascimento) values ( "Leonardo da Silva Melo","Rua Vigario Leopodina N43","melosilva@gmail.com","11 97765-9874","1997-07-04" );

insert into cliente (nome,endereco,email,celular,nascimento) values ( "Roberta Diogenes Melo","Rua Izabel Deleine N13","diogenisro@gmail.com","11 97894-0701","1998-09-07" );

insert into cliente (nome,endereco,email,celular,nascimento) values ( "Carolina Sales de Azevedo","Rua Professora Augustina N85","carolindagameplays@gmail.com","11 976543-6321","2007-08-17" );

insert into cliente (nome,endereco,email,celular,nascimento) values ( "Alessandro vilas novas","Rua jornalista bravo N155","alessandrogemaplis@gmail.com","11 99566-6721","2005-12-01" );

insert into cliente (nome,endereco,email,celular,nascimento) values ( "Izabela augustinho","Rua comendador almeida N76","belinha@gmail.com","11 95376-3731","2006-09-14" );

insert into cliente (nome,endereco,email,celular,nascimento) values ( "Rogério Caldas","Rua Josefa Ceci N35","roger@gmail.com","11 99385-7321","1976-09-14" );

insert into cliente (nome,endereco,email,celular,nascimento) values ( "Sophia Helena","Rua Roberio Marcelin N35","sophiprince@gmail.com","11 99763-8971","2009-03-15" );

insert into cliente (nome,endereco,email,celular,nascimento) values ( "Brenda Silva de Sales","Rua Taques Michelin","Brendagemaplys@gmail.com","11 93462-0271","2008-01-07" );

insert into cliente (nome,endereco,email,celular,nascimento) values ( "Joseph Alerandro","Rua Michael Sales"," Josephale@gmail.com","11 95866-6321","1987-04-17" );

insert into produtos (nome,preco,descricao,quant_estoque) values('Bola de basquete',400.50,'bola de basquetel','4000');
insert into produtos (nome,preco,descricao,quant_estoque) values('Monociclo',800.50,'monociclo','300');
insert into produtos (nome,preco,descricao,quant_estoque) values('curso como ser otimista',300.00,'Curso como ser otimistal','1000');
insert into produtos (nome,preco,descricao,quant_estoque) values('Bola de basquete',400.50,'bola de basquetel','4000');
insert into produtos (nome,preco,descricao,quant_estoque) values('Monociclo',800.50,'monociclo','300');
insert into produtos (nome,preco,descricao,quant_estoque) values('curso como ser otimista',300.00,'Curso como ser otimistal','1000');
insert into produtos (nome,preco,descricao,quant_estoque) values('Bola de basquete',400.50,'bola de basquetel','4000');
insert into produtos (nome,preco,descricao,quant_estoque) values('Monociclo',800.50,'monociclo','300');
insert into produtos (nome,preco,descricao,quant_estoque) values('curso como ser otimista',300.00,'Curso como ser otimistal','1000');

insert into pedido(n_pedido,dt_compra,valor_t,dt_entrega) values (255,'2024-02-21',500,'2024-02-12'),(265,'2023-02-21',500,'2024-06-28'),(255,'2024-02-21',500,'2024-02-22'),(275,'2024-02-11',500,'2024-02-25'),
(275,'2024-02-21',320,'2024-02-22'),(125,'2023-02-21',200,'2023-03-12'),(275,'2024-02-21',300,'2024-03-22'),(155,'2023-02-21',500,'2023-02-25'),(355,'2024-02-22',400,'2024-02-25');

insert into lista_pedidos(valor_n,valor_t,quant) values (276,300,2),(345,26,2),(266,462,2),(266,100,4),(278,385,2),(656,367,5),(244,356,2),(264,802,3),(266,50,2),(266,398,2);


UPDATE cliente
set nome= 'Sophia Helena'
where id_cliente=7;


UPDATE produtos
set preco= 400
where id_produtos=5;

UPDATE pedido
set dt_compra= '2023-02-21'
where id_pedidos=8;

UPDATE lista_pedidos
set valor_t= 1000
where id_pedidos=9;

DELETE FROM cliente
WHERE id_cliente=7;

DELETE FROM lista_pedidos
WHERE id_lista_pedidos=5;