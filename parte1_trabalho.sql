CREATE DATABASE e_commerce22C;
USE e_commerce22C;

CREATE TABLE cliente(
id_cliente int primary key auto_increment,
nome varchar(30) not null,
endereco varchar(255) not null,
email varchar(255) not null,
celular varchar(30) not null,
nascimento date not null
);

CREATE TABLE produtos(
id_produtos int primary key auto_increment,
nome varchar(30) not null,
preco decimal (10,2) not null,
descricao varchar(255) not null,
quant_estoque int not null
);
CREATE TABLE pedido(
id_pedidos int primary key auto_increment,
n_pedido int not null,
dt_compra date not null,
valor_t int not null,
dt_entrega date not null,
id_cliente int ,
FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);
CREATE TABLE lista_pedidos(
id_lista_pedidos int primary key auto_increment,
valor_n decimal(10,2),
valor_t decimal(10,2),
quant int not null,
id_pedidos int,
id_produtos int,
FOREIGN KEY (id_pedidos) REFERENCES pedido(id_pedidos),
FOREIGN KEY (id_produtos) REFERENCES produtos(id_produtos)
);