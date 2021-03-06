USE IMHU_ACE;

INSERT INTO ace.Perfil (ID_Perfil,Designacao) 
	VALUES (1,'Coordenador');
INSERT INTO ace.Perfil (ID_Perfil,Designacao) 
	VALUES (2,'Respons�vel Encomendas');
INSERT INTO ace.Perfil (ID_Perfil,Designacao) 
	VALUES (3,'Administrativo');

INSERT INTO ace.Funcionario(ID_Funcionario,Nome,Contacto) 
	VALUES ('ACE00001','Hilton Dias',919232343);


INSERT INTO ace.Produto(Referencia,NomeProduto) 
	VALUES (210300003,'Adesivo antial�rgico 20');

INSERT INTO ace.Produto(Referencia,NomeProduto) 
	VALUES (210300031,'Adesivo normal perfurado 18');

INSERT INTO ace.Produto(Referencia,NomeProduto) 
	VALUES (210200052,'Compressa n�o tecido esterilizada 10x10');

INSERT INTO ace.Produto(Referencia,NomeProduto) 
	VALUES (210200053,'Compressa n�o tecido esterilizada 15x20');

INSERT INTO ace.Produto(Referencia,NomeProduto) 
	VALUES (210200051,'Compressa n�o tecido esterilizada 7,5x7,5');

INSERT INTO ace.Produto(Referencia,NomeProduto) 
	VALUES (210200023,'Compressa n�o tecido n�o esterilizada 5x5');

INSERT INTO ace.Produto(Referencia,NomeProduto) 
	VALUES (220200001,'Luva cir�rgica latex (est) 6 1/2');

INSERT INTO ace.Produto(Referencia,NomeProduto) 
	VALUES (220200002,'Luva cir�rgica latex (est) 7');

INSERT INTO ace.Produto(Referencia,NomeProduto) 
	VALUES (290100012,'Luva latex n�o esterilizada - M');

INSERT INTO ace.Produto(Referencia,NomeProduto) 
	VALUES (290100013,'Luva latex n�o esterilizada - P');

INSERT INTO ace.Produto(Referencia,NomeProduto) 
	VALUES (210500001,'Penso adesivo n�o tecido 15x8');

INSERT INTO ace.Produto(Referencia,NomeProduto) 
	VALUES (210500003,'Penso adesivo n�o tecido 10x6');

INSERT INTO ace.Produto(Referencia,NomeProduto) 
	VALUES (230200021,'Seringa irrecuper�vel s/ agulha - 2 ml - 2 corpos');

INSERT INTO ace.Produto(Referencia,NomeProduto) 
	VALUES (230200031,'Seringa irrecuper�vel s/ agulha - 5 ml - 2 corpos');



INSERT INTO ace.TipoUnidadeFuncional(Tipo,Designacao)
	VALUES('USF','Unidades de Sa�de Familiar')

INSERT INTO ace.TipoUnidadeFuncional(Tipo,Designacao)
	VALUES('UCSP','Unidade de Cuidados de Sa�de Personalizados')

INSERT INTO ace.TipoUnidadeFuncional(Tipo,Designacao)
	VALUES('UCC','Unidades de Cuidados na Comunidade')

INSERT INTO ace.TipoUnidadeFuncional(Tipo,Designacao)
	VALUES('URAP','Unidade de Recursos Assistenciais Partilhados')

INSERT INTO ace.TipoUnidadeFuncional(Tipo,Designacao)
	VALUES('USP','Unidades de Sa�de P�blica')


INSERT INTO ace.UnidadeFuncional
	VALUES('USF_ACEXII_1','Rua','Alhandra','USF')

INSERT INTO ace.UnidadeFuncional
	VALUES('USF_ACEXII_2','Rua','P�voa de Santa Iria','USF')

INSERT INTO ace.UnidadeFuncional
	VALUES('USF_ACEXII_3','Rua','Vila Franca de Xira','USF')
	
INSERT INTO ace.EncomendaRecebida VALUES ('usf_Enc1000',210300003,'20150601',1,'ini','USF_ACEXII_1')
INSERT INTO ace.EncomendaRecebida VALUES ('usf_Enc1001',210200053,'20150601',3,'ini','USF_ACEXII_2')
INSERT INTO ace.EncomendaRecebida VALUES ('usf_Enc1002',210300003,'20150601',43,'ini','USF_ACEXII_1')
INSERT INTO ace.EncomendaRecebida VALUES ('usf_Enc1003',210200052,'20150601',5454,'ini','USF_ACEXII_2')
INSERT INTO ace.EncomendaRecebida VALUES ('usf_Enc1004',210300003,'20150601',1,'ini','USF_ACEXII_2')
INSERT INTO ace.EncomendaRecebida VALUES ('usf_Enc1005',210200052,'20150601',20,'ini','USF_ACEXII_3')
INSERT INTO ace.EncomendaRecebida VALUES ('usf_Enc1006',210300003,'20150601',4354,'ini','USF_ACEXII_1')
INSERT INTO ace.EncomendaRecebida VALUES ('usf_Enc1007',210200052,'20150601',1,'ini','USF_ACEXII_2')
INSERT INTO ace.EncomendaRecebida VALUES ('usf_Enc1008',210300003,'20150601',50,'ini','USF_ACEXII_3')
INSERT INTO ace.EncomendaRecebida VALUES ('usf_Enc1009',210200053,'20150601',1,'ini','USF_ACEXII_1')
INSERT INTO ace.EncomendaRecebida VALUES ('usf_Enc1010',210200053,'20150601',10,'ini','USF_ACEXII_3')
INSERT INTO ace.EncomendaRecebida VALUES ('usf_Enc1011',220200002,'20150601',2,'ini','USF_ACEXII_2')
INSERT INTO ace.EncomendaRecebida VALUES ('usf_Enc1012',210200052,'20150601',43,'ini','USF_ACEXII_1')
INSERT INTO ace.EncomendaRecebida VALUES ('usf_Enc1013',210200052,'20150601',1,'ini','USF_ACEXII_3')
INSERT INTO ace.EncomendaRecebida VALUES ('usf_Enc1014',210300031,'20150601',54,'ini','USF_ACEXII_1')
INSERT INTO ace.EncomendaRecebida VALUES ('usf_Enc1015',210300031,'20150601',1,'ini','USF_ACEXII_3')
INSERT INTO ace.EncomendaRecebida VALUES ('usf_Enc1016',210300031,'20150601',2,'ini','USF_ACEXII_1')
INSERT INTO ace.EncomendaRecebida VALUES ('usf_Enc1017',210300003,'20150601',13898,'ini','USF_ACEXII_3')
INSERT INTO ace.EncomendaRecebida VALUES ('usf_Enc1018',210300003,'20150601',234,'ini','USF_ACEXII_1')
INSERT INTO ace.EncomendaRecebida VALUES ('ace_Enc1019',210300003,'20150601',34,'ini','USF_ACEXII_1')

