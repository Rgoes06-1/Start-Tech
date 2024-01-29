create database sprint04;
use sprint04;

create table pedido (
id bigint primary key auto_increment,
produto varchar(255),
categoria varchar(255),
preco decimal(10,2),
quantidade integer,
data date,
cliente varchar(60)
);

INSERT INTO pedido (categoria,produto,preco,quantidade,data,cliente) VALUES ('INFO','Notebook Samsung',3523.00,1,'2022-01-01','ANA');
INSERT INTO pedido (categoria,produto,preco,quantidade,data,cliente) VALUES ('MÓVEIS','Sofá 3 lugares',2500.00,1,'2022-01-05','ANA');
INSERT INTO pedido (categoria,produto,preco,quantidade,data,cliente) VALUES ('LIVROS','Clean Architecture',102.90,2,'2022-01-08','ANA');
INSERT INTO pedido (categoria,produto,preco,quantidade,data,cliente) VALUES ('MÓVEIS','Mesa de jantar 6 lugares',3678.98,1,'2022-01-06','ELI');
INSERT INTO pedido (categoria,produto,preco,quantidade,data,cliente) VALUES ('CELULARES','iPhone 13 Pro',9176.00,6,'2022-01-13','ANA');
INSERT INTO pedido (categoria,produto,preco,quantidade,data,cliente) VALUES ('INFO','Monitor Dell 27',1889.00,3,'2022-01-04','DANI');
INSERT INTO pedido (categoria,produto,preco,quantidade,data,cliente) VALUES ('LIVROS','Implementing Domain-Driven Design',144.07,3,'2022-01-10','GABI');
INSERT INTO pedido (categoria,produto,preco,quantidade,data,cliente) VALUES ('AUTOMOTIVA','Jogo de pneus',1276.79,1,'2022-01-15','BIA');
INSERT INTO pedido (categoria,produto,preco,quantidade,data,cliente) VALUES ('LIVROS','Clean Code',95.17,1,'2022-01-09','BIA');
INSERT INTO pedido (categoria,produto,preco,quantidade,data,cliente) VALUES ('CELULARES','Galaxy S22 Ultra',8549.110,5,'2022-01-14','DANI');
INSERT INTO pedido (categoria,produto,preco,quantidade,data,cliente) VALUES ('INFO','Macbook Pro 16',31752.00,1,'2022-01-03','CAIO');
INSERT INTO pedido (categoria,produto,preco,quantidade,data,cliente) VALUES ('LIVROS','Refactoring Improving te Design of Existing Code',173.90,1,'2022-01-12','DANI');
INSERT INTO pedido (categoria,produto,preco,quantidade,data,cliente) VALUES ('MÓVEIS','Cama queen size',3100.00,2,'2022-01-07','DANI');
INSERT INTO pedido (categoria,produto,preco,quantidade,data,cliente) VALUES ('AUTOMOTIVA','Central multimia',711.18,1,'2022-01-16','CAIO');
INSERT INTO pedido (categoria,produto,preco,quantidade,data,cliente) VALUES ('LIVROS','Building Microservices',300.28,2,'2022-01-11','CAIO');
INSERT INTO pedido (categoria,produto,preco,quantidade,data,cliente) VALUES ('INFO','Galaxy Tab S8',5939.10,4,'2022-01-02','BIA');


update pedido set categoria = "INFORMÁTICA" where categoria = "INFO";

select * from pedido;

select * from pedido where categoria = "CELULARES";

select * from pedido where preco >= 3000.00 and preco <= 10000.00;

delete from pedido where quantidade = 1 or cliente = "BIA";
