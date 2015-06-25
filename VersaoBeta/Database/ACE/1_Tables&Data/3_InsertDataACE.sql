USE IMHU_ACE;

INSERT INTO ace.Perfil (ID_Perfil,Designacao) 
	VALUES (1,'Coordenador');
INSERT INTO ace.Perfil (ID_Perfil,Designacao) 
	VALUES (2,'Responsável Encomendas');
INSERT INTO ace.Perfil (ID_Perfil,Designacao) 
	VALUES (3,'Administrativo');

INSERT INTO ace.Funcionario(ID_Funcionario,Nome,Contacto) 
	VALUES ('ACE00001','Hilton Dias',919232343);


INSERT INTO ace.Produto(Referencia,NomeProduto) 
	VALUES (210300003,'Adesivo antialérgico 20');

INSERT INTO ace.Produto(Referencia,NomeProduto) 
	VALUES (210300031,'Adesivo normal perfurado 18');

INSERT INTO ace.Produto(Referencia,NomeProduto) 
	VALUES (210200052,'Compressa não tecido esterilizada 10x10');

INSERT INTO ace.Produto(Referencia,NomeProduto) 
	VALUES (210200053,'Compressa não tecido esterilizada 15x20');

INSERT INTO ace.Produto(Referencia,NomeProduto) 
	VALUES (210200051,'Compressa não tecido esterilizada 7,5x7,5');

INSERT INTO ace.Produto(Referencia,NomeProduto) 
	VALUES (210200023,'Compressa não tecido não esterilizada 5x5');

INSERT INTO ace.Produto(Referencia,NomeProduto) 
	VALUES (220200001,'Luva cirúrgica latex (est) 6 1/2');

INSERT INTO ace.Produto(Referencia,NomeProduto) 
	VALUES (220200002,'Luva cirúrgica latex (est) 7');

INSERT INTO ace.Produto(Referencia,NomeProduto) 
	VALUES (290100012,'Luva latex não esterilizada - M');

INSERT INTO ace.Produto(Referencia,NomeProduto) 
	VALUES (290100013,'Luva latex não esterilizada - P');

INSERT INTO ace.Produto(Referencia,NomeProduto) 
	VALUES (210500001,'Penso adesivo não tecido 15x8');

INSERT INTO ace.Produto(Referencia,NomeProduto) 
	VALUES (210500003,'Penso adesivo não tecido 10x6');

INSERT INTO ace.Produto(Referencia,NomeProduto) 
	VALUES (230200021,'Seringa irrecuperável s/ agulha - 2 ml - 2 corpos');

INSERT INTO ace.Produto(Referencia,NomeProduto) 
	VALUES (230200031,'Seringa irrecuperável s/ agulha - 5 ml - 2 corpos');



INSERT INTO ace.TipoUnidadeFuncional(Tipo,Designacao)
	VALUES('USF','Unidades de Saúde Familiar')

INSERT INTO ace.TipoUnidadeFuncional(Tipo,Designacao)
	VALUES('UCSP','Unidade de Cuidados de Saúde Personalizados')

INSERT INTO ace.TipoUnidadeFuncional(Tipo,Designacao)
	VALUES('UCC','Unidades de Cuidados na Comunidade')

INSERT INTO ace.TipoUnidadeFuncional(Tipo,Designacao)
	VALUES('URAP','Unidade de Recursos Assistenciais Partilhados')

INSERT INTO ace.TipoUnidadeFuncional(Tipo,Designacao)
	VALUES('USP','Unidades de Saúde Pública')


INSERT INTO ace.UnidadeFuncional
	VALUES('USF_ACEXII_1','Rua','Alhandra','USF')

INSERT INTO ace.UnidadeFuncional
	VALUES('USF_ACEXII_2','Rua','Póvoa de Santa Iria','USF')

INSERT INTO ace.UnidadeFuncional
	VALUES('USF_ACEXII_3','Rua','Vila Franca de Xira','USF')