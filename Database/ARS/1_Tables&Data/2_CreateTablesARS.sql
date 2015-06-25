CREATE TABLE Fornecedor_Ars
(
	ID_Fornecedor varchar (50) PRIMARY KEY,
	Nome varchar (100),
	Morada varchar(255),
)

CREATE TABLE ContactoFornecedor_Ars
(
	ID_Contacto int IDENTITY(1,1) PRIMARY KEY,
	Tipo_Contacto varchar(10),
	Contacto varchar(50),
	ID_Fornecedor varchar (50),
	FOREIGN KEY (ID_Fornecedor) REFERENCES Fornecedor_Ars(ID_Fornecedor)
)

CREATE TABLE Produto_Ars
(
	Referencia_Produto varchar (50) PRIMARY KEY,
	Nome varchar (100),
	PrecoPorUnidade float(23), --Verificar a precisão se é adequada ou não 
	Marca varchar (50)
)

CREATE TABLE ProdutoFornecedor_Ars
(
	Referencia_Produto varchar (50) ,
	ID_Fornecedor varchar (50) ,
	PRIMARY KEY (Referencia_Produto,ID_Fornecedor),
	FOREIGN KEY (ID_Fornecedor) REFERENCES Fornecedor_Ars(ID_Fornecedor),
	FOREIGN KEY (Referencia_Produto) REFERENCES Produto_Ars(Referencia_Produto)
)

CREATE TABLE Departamento_Ars
(
	ID_Departamento varchar (50) PRIMARY KEY,
	Nome_Departamento varchar (100)
)

CREATE TABLE Funcionario_Ars
(
	ID_Funcionario varchar (50) PRIMARY KEY,
	Nome varchar (100),
	Contacto varchar (100),
	ID_Departamento varchar (50),
	FOREIGN KEY (ID_Departamento) REFERENCES Departamento_Ars(ID_Departamento)
)


CREATE TABLE Encomenda_Ars
(
	ID_Encomenda varchar (50) PRIMARY KEY,
	Referencia_Produto varchar (50),
	Quantidade int,
	Data_Encomenda DateTime,
	DataDeValidadeProduto DateTime,--Acrescentei como sugestão - Fixar a data quando a encomenda for satisfeita
	Estado varchar (10), -- Acrescentei como sugestão
	ID_Fornecedor varchar (50),
	ID_Funcionario varchar (50),
	FOREIGN KEY (ID_Fornecedor) REFERENCES Fornecedor_Ars(ID_Fornecedor),
	FOREIGN KEY (ID_Funcionario) REFERENCES Funcionario_Ars(ID_Funcionario),
	FOREIGN KEY (Referencia_Produto) REFERENCES Produto_Ars(Referencia_Produto)
)


CREATE TABLE Perfil_Ars
(
	ID_Perfil varchar (50) PRIMARY KEY,
	Designacao varchar (100)
)

CREATE TABLE FuncionarioPerfil_Ars
(
	ID_Funcionario varchar (50),
	ID_Perfil varchar (50) ,
	PRIMARY KEY (ID_Funcionario,ID_Perfil),
	FOREIGN KEY (ID_Perfil) REFERENCES Perfil_Ars(ID_Perfil),
	FOREIGN KEY (ID_Funcionario) REFERENCES Funcionario_Ars(ID_Funcionario)
)


CREATE TABLE Ace_Ars
(
	ID_Ace varchar (50) PRIMARY KEY,
	Nome varchar (100)
)

CREATE TABLE EncomendaRecebida_Ars
(
	ID_EncomendaRecebida varchar (50) PRIMARY KEY,
	Estado varchar (10),
	Quantidade int,
	Data_Encomenda DateTime,
	Referencia_Produto varchar (50),
	ID_Ace varchar (50),
	FOREIGN KEY (Referencia_Produto) REFERENCES Produto_Ars(Referencia_Produto),
	FOREIGN KEY (ID_Ace) REFERENCES Ace_Ars(ID_Ace)
)

CREATE TABLE  InfoTecnicaProduto_Ars
(
	ID_InfoTecnica varchar (50) ,
	Referencia_Produto varchar (50) ,
	PRIMARY KEY (ID_InfoTecnica,Referencia_Produto),
	Material varchar(50),
	Cor varchar(50),
	Tamanho varchar(50),
	Resistencia varchar(50),
	Lote varchar(50),
	Fabricante varchar(50),
	FOREIGN KEY (Referencia_Produto) REFERENCES Produto_Ars(Referencia_Produto)
)
