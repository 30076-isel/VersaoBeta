USE IMHU_USF;

INSERT INTO Perfil (ID_Perfil,Designacao) 
	VALUES (1,'M�dico');
INSERT INTO Perfil (ID_Perfil,Designacao) 
	VALUES (2,'Enfermeira');
INSERT INTO Perfil (ID_Perfil,Designacao) 
	VALUES (3,'Enfermeira Coordenadora');
INSERT INTO Perfil (ID_Perfil,Designacao) 
	VALUES (4,'Administrativo');

INSERT INTO Funcionario(ID_Funcionario,Nome,Contacto) 
	VALUES ('USF00001','Paulo Coelho',919232343);
/*INSERT INTO Funcionario(ID_Funcionario,Nome,Contacto) 
	VALUES (2,'Paulo Coelho',919232343);*/


INSERT INTO Produto(Referencia,NomeProduto,DataValidade,QuantidadeProduto,PontoEncomenda) 
	VALUES (210300003,'Adesivo antial�rgico 20',null,20,10);

INSERT INTO Produto(Referencia,NomeProduto,DataValidade,QuantidadeProduto,PontoEncomenda) 
	VALUES (210300031,'Adesivo normal perfurado 18',null,20,10);

INSERT INTO Produto(Referencia,NomeProduto,DataValidade,QuantidadeProduto,PontoEncomenda) 
	VALUES (210200052,'Compressa n�o tecido esterilizada 10x10',null,20,10);

INSERT INTO Produto(Referencia,NomeProduto,DataValidade,QuantidadeProduto,PontoEncomenda) 
	VALUES (210200053,'Compressa n�o tecido esterilizada 15x20',null,20,10);

INSERT INTO Produto(Referencia,NomeProduto,DataValidade,QuantidadeProduto,PontoEncomenda) 
	VALUES (210200051,'Compressa n�o tecido esterilizada 7,5x7,5',null,20,10);

INSERT INTO Produto(Referencia,NomeProduto,DataValidade,QuantidadeProduto,PontoEncomenda) 
	VALUES (210200023,'Compressa n�o tecido n�o esterilizada 5x5',null,20,10);

INSERT INTO Produto(Referencia,NomeProduto,DataValidade,QuantidadeProduto,PontoEncomenda) 
	VALUES (220200001,'Luva cir�rgica latex (est) 6 1/2',null,20,10);

INSERT INTO Produto(Referencia,NomeProduto,DataValidade,QuantidadeProduto,PontoEncomenda) 
	VALUES (220200002,'Luva cir�rgica latex (est) 7',null,20,10);

INSERT INTO Produto(Referencia,NomeProduto,DataValidade,QuantidadeProduto,PontoEncomenda) 
	VALUES (290100012,'Luva latex n�o esterilizada - M',null,20,10);

INSERT INTO Produto(Referencia,NomeProduto,DataValidade,QuantidadeProduto,PontoEncomenda) 
	VALUES (290100013,'Luva latex n�o esterilizada - P',null,20,10);

INSERT INTO Produto(Referencia,NomeProduto,DataValidade,QuantidadeProduto,PontoEncomenda) 
	VALUES (210500001,'Penso adesivo n�o tecido 15x8',null,20,10);

INSERT INTO Produto(Referencia,NomeProduto,DataValidade,QuantidadeProduto,PontoEncomenda) 
	VALUES (210500003,'Penso adesivo n�o tecido 10x6',null,20,10);

INSERT INTO Produto(Referencia,NomeProduto,DataValidade,QuantidadeProduto,PontoEncomenda) 
	VALUES (230200021,'Seringa irrecuper�vel s/ agulha - 2 ml - 2 corpos',null,20,10);

INSERT INTO Produto(Referencia,NomeProduto,DataValidade,QuantidadeProduto,PontoEncomenda) 
	VALUES (230200031,'Seringa irrecuper�vel s/ agulha - 5 ml - 2 corpos',null,20,10);



