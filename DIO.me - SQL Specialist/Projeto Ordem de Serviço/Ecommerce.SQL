use ecommerce;

show tables;

alter table produto modify categoria ENUM('Eletronicos','Vestimentas','Alimentos','Varejo','Infantil') not null;
desc produto;
desc pedido
;
alter table pedido add StatusPagto float;

alter table pedido add foreign key (idpedido) references status(idStatusPedidoCompra);

alter table cliente drop DataNascimento;
desc cliente;

drop database company;

insert into cliente (Pnome,NomeDoMeio,Sobrenome,CPF,endereco)
	   values
		     ('Matheus','O','Pimentel', 987654321,'rua alemeda 289, Centro - Cidade das flores'),
			 ('Ricardo','F','Silva', 45678913,'avenida alemeda vinha 1009, Centro - Cidade das flores'),
			 ('Julia','S','França', 789123456,'rua lareijras 861, Centro - Cidade das flores'),
			 ('Roberta','G','Assis', 98745631,'avenidade koller 19, Centro - Cidade das flores'),
			 ('Isabela','M','Cruz', 654789123,'rua alemeda das flores 28, Centro - Cidade das flores');
             
             
insert into produto (categoria, Descricao, valor) values
							 
                               ('Infantil','PS5','5900.00'),
                                ('Vestimentas','Blusa Nike','499.00'),
                                 ('Alimentos','Picanha kilo','39.00'),
                                  ('Eletrônicos','SmartTV','1159.00'),
                                   ('Varejo','Morango kilo','39.00');


insert into pedido (StatusPedido, Descricao, Cliente_idCliente, Frete) values ('Em andamento','Compra realizada e valor pago dia 16/02/2024','1','15.00');
                                   
                              
                             
		