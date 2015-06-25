USE IMHU_ACE;

CREATE TABLE ace.Perfil
(
	ID_Perfil INT PRIMARY KEY,
	Designacao NVARCHAR(50)
);

GO


CREATE TABLE ace.Funcionario
(
	ID_Funcionario	VARCHAR(100) PRIMARY KEY,
	Nome			NVARCHAR(100),
	Contacto		VARCHAR(50)
);

GO

CREATE TABLE ace.FuncionarioPerfil
(
	ID_Funcionario	VARCHAR(100),
	ID_Perfil		INT,
	CONSTRAINT pk_FuncionarioPerfil PRIMARY KEY (ID_Funcionario,ID_Perfil),
	CONSTRAINT fk_RefFuncionario	FOREIGN KEY (ID_Funcionario) REFERENCES ace.Funcionario(ID_Funcionario),
	CONSTRAINT fk_RefPerfil	FOREIGN KEY (ID_Perfil) REFERENCES ace.Perfil(ID_Perfil)
);

GO

CREATE TABLE ace.Produto
(
	Referencia INT PRIMARY KEY,
	NomeProduto NVARCHAR(100)
);

GO

CREATE TABLE ace.TipoUnidadeFuncional
(
	Tipo VARCHAR(10) PRIMARY KEY,
	Designacao VARCHAR(50)
)

GO

CREATE TABLE ace.UnidadeFuncional
(
	ID_UnidadeFuncional VARCHAR(100) PRIMARY KEY,
	Designacao VARCHAR(50),
	Morada		VARCHAR(100),
	Tipo		VARCHAR(10),
	--CONSTRAINT ck_Tipo CHECK (Tipo in ('USF','UCSP','UCC','URAP','USP')),
	CONSTRAINT fk_UnidadeFuncionalTipo FOREIGN KEY (Tipo) REFERENCES ace.TipoUnidadeFuncional(Tipo)
);

GO

CREATE TABLE ace.EncomendaRecebida
(
	ID_Encomenda			VARCHAR(100) PRIMARY KEY,
	Referencia_Produto		INT,
	DataEncomenda			DATETIME,
	QuantidadeEncomenda		INT,
	Estado					VARCHAR(10),
	ID_UnidadeFuncional		VARCHAR(100),
	CONSTRAINT fk_EncomendaProduto FOREIGN KEY (Referencia_Produto) REFERENCES ace.Produto(Referencia),
	CONSTRAINT fk_EncomendaUF FOREIGN KEY (ID_UnidadeFuncional) REFERENCES ace.UnidadeFuncional(ID_UnidadeFuncional)
);

GO

CREATE TABLE ace.EncomendaAEfectuar
(
	ID_Encomenda			VARCHAR(100) PRIMARY KEY,
	Referencia				INT,
	DataEncomenda			DATETIME,
	QuantidadeEncomenda		INT,
	Estado					VARCHAR(10),
	ID_Funcionario			VARCHAR(100),
	CONSTRAINT fk_EncomendaEfectuarProduto FOREIGN KEY (Referencia) REFERENCES ace.Produto(Referencia),
	CONSTRAINT fk_EncomendaFuncionario	FOREIGN KEY (ID_Funcionario) REFERENCES ace.Funcionario(ID_Funcionario),
	CONSTRAINT ck_EncomendaEstado		CHECK		(Estado IN ('INI','ACA'))
);

GO