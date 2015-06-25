USE IMHU_USF;

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Paulo Coelho>
-- Create date: <04-06-2015>
-- Description:	<Retorna todas as encomendas existentes>
-- =============================================
CREATE PROCEDURE EncomendaGetAll
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT	e.ID_ENCOMENDA,
			p.NomeProduto,
			e.QuantidadeEncomenda,
			e.ESTADO
	FROM	Encomenda e INNER JOIN 
			Produto p	ON e.Referencia_Produto = p.Referencia
END
GO
