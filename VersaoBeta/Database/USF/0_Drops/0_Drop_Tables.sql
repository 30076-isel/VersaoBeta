
IF (EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE TABLE_SCHEMA = 'usf' 
                 AND  TABLE_NAME = 'Lote'))
BEGIN
    --Do Stuff
	DROP TABLE Lote;
END

IF (EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE TABLE_SCHEMA = 'usf' 
                 AND  TABLE_NAME = 'Encomenda'))
BEGIN
    --Do Stuff
	DROP TABLE Encomenda;
END

IF (EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE TABLE_SCHEMA = 'usf' 
                 AND  TABLE_NAME = 'Encomenda'))
BEGIN
    --Do Stuff
	DROP TABLE Encomenda;
END

IF (EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE TABLE_SCHEMA = 'usf' 
                 AND  TABLE_NAME = 'PickingProduto'))
BEGIN
    --Do Stuff
	DROP TABLE PickingProduto;
END

IF (EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE TABLE_SCHEMA = 'usf' 
                 AND  TABLE_NAME = 'Picking'))
BEGIN
    --Do Stuff
	DROP TABLE Picking;
END


IF (EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE TABLE_SCHEMA = 'usf' 
                 AND  TABLE_NAME = 'Produto'))
BEGIN
    --Do Stuff
	DROP TABLE Produto;
END


IF (EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE TABLE_SCHEMA = 'usf' 
                 AND  TABLE_NAME = 'FuncionarioPerfil'))
BEGIN
    --Do Stuff
	DROP TABLE FuncionarioPerfil;
END


IF (EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE TABLE_SCHEMA = 'usf' 
                 AND  TABLE_NAME = 'Funcionario'))
BEGIN
    --Do Stuff
	DROP TABLE Funcionario;
END

IF (EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE TABLE_SCHEMA = 'usf' 
                 AND  TABLE_NAME = 'Perfil'))
BEGIN
    --Do Stuff
	DROP TABLE Perfil;
END