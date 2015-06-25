USE IMHU_ACE;

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Paulo Coelho>
-- Create date: <23-06-2015>
-- Description:	<Retorna todas as encomendas recebidas das USFs>
-- =============================================
CREATE PROCEDURE ace.EncomendaRecebidaGetAll

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT 	e.ID_Encomenda,
			e.Referencia_Produto,
			p.NomeProduto,
			e.DataEncomenda,
			e.QuantidadeEncomenda,
			e.Estado,
			e.ID_UnidadeFuncional
	FROM 	ace.EncomendaRecebida e INNER JOIN 
			ace.Produto p	ON e.Referencia_Produto = p.Referencia
 
END
GO