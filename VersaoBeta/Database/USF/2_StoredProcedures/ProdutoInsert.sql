USE IMHU_USF;

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Paulo Coelho>
-- Create date: <04-06-2015>
-- Description:	<Permite Inserir dados relativamente a Produtos>
-- =============================================
CREATE PROCEDURE ProdutoInsert
	-- Add the parameters for the stored procedure here
	@Referencia INT,
	@NomeProduto NVARCHAR(100)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF (NOT EXISTS (SELECT * 
                 FROM Produto
                 WHERE Referencia = @Referencia))
		INSERT INTO Produto(Referencia,NomeProduto,DataValidade,QuantidadeProduto,PontoEncomenda) 
			VALUES (@Referencia,@NomeProduto,null,null,null);

END
GO
