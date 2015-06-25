USE IMHU_USF;

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Paulo Coelho>
-- Create date: <04-06-2015>
-- Description:	<Permite Actualizar a quantidade de um produto na Accao de Picking>
-- =============================================
CREATE PROCEDURE PickingProdutoUpdate
	-- Add the parameters for the stored procedure here
	@Referencia INT,
	@ID_Picking INT,
	@Quantidade INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    IF(EXISTS(SELECT * FROM PickingProduto WHERE Referencia_Produto = @Referencia AND ID_Picking = @ID_Picking))
		UPDATE	PickingProduto
		SET		Quantidade = @Quantidade
		WHERE Referencia_Produto = @Referencia 
		AND ID_Picking = @ID_Picking
END
GO
