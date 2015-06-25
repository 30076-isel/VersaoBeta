USE IMHU_ACE;

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Paulo Coelho>
-- Create date: <14-06-2015>
-- Description:	<Insere uma encomenda recebida da USF>
-- =============================================
CREATE PROCEDURE ace.EncomendaRecebidaInsert
	-- Add the parameters for the stored procedure here
	@ID_Encomenda			VARCHAR(100),
	@Referencia_Produto		INT,
	@DataEncomenda			DATETIME,
	@QuantidadeEncomenda		INT,
	@Estado					VARCHAR(10),
	@ID_UnidadeFuncional		VARCHAR(100)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

	INSERT INTO ace.EncomendaRecebida (ID_Encomenda,Referencia_Produto,DataEncomenda,QuantidadeEncomenda,Estado,ID_UnidadeFuncional) 
		VALUES (@ID_Encomenda,@Referencia_Produto,@DataEncomenda,@QuantidadeEncomenda,@Estado,@ID_UnidadeFuncional);
END
GO
