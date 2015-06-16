USE IMHU_USF;

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Paulo Coelho>
-- Create date: <04-06-2015>
-- Description:	<Insere um Produto associado ao Picking com a quantidade retirada>
-- =============================================
CREATE PROCEDURE PickingProdutoInsert
	-- Add the parameters for the stored procedure here
	@Referencia INT,
	@ID_Picking INT,
	@Quantidade INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO PickingProduto (Referencia_Produto,ID_Picking,Quantidade) VALUES (@Referencia,@ID_Picking,@Quantidade);
END
GO
