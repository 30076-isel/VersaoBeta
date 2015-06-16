USE IMHU_ACE;

IF (EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE TABLE_SCHEMA = 'ace' 
                 AND  TABLE_NAME = 'Encomenda'))
BEGIN
    --Do Stuff
	DROP TABLE Encomenda;
END

GO

IF (EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE TABLE_SCHEMA = 'ace' 
                 AND  TABLE_NAME = 'EncomendaAEfectuar'))
BEGIN
    --Do Stuff
	DROP TABLE EncomendaAEfectuar;
END

GO

IF (EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE TABLE_SCHEMA = 'ace' 
                 AND  TABLE_NAME = 'EncomendaRecebida'))
BEGIN
    --Do Stuff
	DROP TABLE EncomendaRecebida;
END

GO

IF (EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE TABLE_SCHEMA = 'ace' 
                 AND  TABLE_NAME = 'UnidadeFuncional'))
BEGIN
    --Do Stuff
	DROP TABLE UnidadeFuncional;
END

GO

IF (EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE TABLE_SCHEMA = 'ace' 
                 AND  TABLE_NAME = 'TipoUnidadeFuncional'))
BEGIN
    --Do Stuff
	DROP TABLE TipoUnidadeFuncional;
END

GO

IF (EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE TABLE_SCHEMA = 'ace' 
                 AND  TABLE_NAME = 'Produto'))
BEGIN
    --Do Stuff
	DROP TABLE Produto;
END

GO

IF (EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE TABLE_SCHEMA = 'ace' 
                 AND  TABLE_NAME = 'FuncionarioPerfil'))
BEGIN
    --Do Stuff
	DROP TABLE FuncionarioPerfil;
END

GO

IF (EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE TABLE_SCHEMA = 'ace' 
                 AND  TABLE_NAME = 'Funcionario'))
BEGIN
    --Do Stuff
	DROP TABLE Funcionario;
END

GO

IF (EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE TABLE_SCHEMA = 'ace' 
                 AND  TABLE_NAME = 'Perfil'))
BEGIN
    --Do Stuff
	DROP TABLE Perfil;
END

GO