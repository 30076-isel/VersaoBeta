USE IMHU_USF;

CREATE TABLE usf.Perfil
(
	ID_Perfil INT PRIMARY KEY,
	Designacao NVARCHAR(50)
);

GO

CREATE TABLE usf.Funcionario
(
	ID_Funcionario VARCHAR(50) PRIMARY KEY,
	Nome	NVARCHAR(100),
	Contacto VARCHAR(100)
);

GO

CREATE TABLE usf.FuncionarioPerfil
(
	ID_Funcionario VARCHAR(50),
	ID_Perfil	INT,
	CONSTRAINT pk_FuncionarioPerfil PRIMARY KEY (ID_Funcionario,ID_Perfil),
	CONSTRAINT fk_RefFuncionario	FOREIGN KEY (ID_Funcionario) REFERENCES usf.Funcionario(ID_Funcionario),
	CONSTRAINT fk_RefPerfil	FOREIGN KEY (ID_Perfil) REFERENCES usf.Perfil(ID_Perfil)
);

GO

CREATE TABLE usf.Produto
(
	Referencia INT PRIMARY KEY,
	NomeProduto NVARCHAR(100),
	QuantidadeProduto	INT,
	PontoEncomenda INT
);

GO

CREATE TABLE usf.Picking
(
	ID_Picking	INT IDENTITY(1,1) PRIMARY KEY,
	Data_Picking	DATE,
	ID_Funcionario VARCHAR(50),
	CONSTRAINT fk_PickingFuncionario FOREIGN KEY (ID_Funcionario) REFERENCES usf.Funcionario(ID_Funcionario)
);

GO

CREATE TABLE usf.PickingProduto
(
	Referencia_Produto INT,
	ID_Picking INT,
	Quantidade INT,
	CONSTRAINT pk_PickingProduto PRIMARY KEY (Referencia_Produto,ID_Picking),
	CONSTRAINT fk_Produto FOREIGN KEY (Referencia_Produto) REFERENCES usf.Produto(Referencia),
	CONSTRAINT fk_Picking FOREIGN KEY (ID_Picking) REFERENCES usf.Picking(ID_Picking)
);

GO

CREATE TABLE usf.Encomenda
(
	ID_Encomenda			VARCHAR(100) PRIMARY KEY,
	Referencia_Produto		INT,
	DataEncomenda			DATETIME,
	QuantidadeEncomenda		INT,
	Estado					VARCHAR(10),
	ID_Funcionario			VARCHAR(50),
	CONSTRAINT fk_EncomendaProduto FOREIGN KEY (Referencia_Produto) REFERENCES usf.Produto(Referencia),
	CONSTRAINT fk_EncomendaFuncionario	FOREIGN KEY (ID_Funcionario) REFERENCES usf.Funcionario(ID_Funcionario),
	CONSTRAINT ck_EncomendaEstado		CHECK		(Estado IN ('INI','ACA'))
);

GO

CREATE TABLE usf.Lote
(
	ID_Lote	INT	PRIMARY KEY,
	DataValidadeProduto DATE,
	Referencia_Produto INT,
	CONSTRAINT fk_LoteProduto FOREIGN KEY (Referencia_Produto) REFERENCES usf.Produto(Referencia)
);

GO