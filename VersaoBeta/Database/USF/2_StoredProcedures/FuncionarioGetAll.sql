USE IMHU_USF;

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Paulo Coelho>
-- Create date: <04-06-2015>
-- Description:	<Obtem todos os Funcionarios existentes>
-- =============================================
CREATE PROCEDURE FuncionarioGetAll
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT	ID_Funcionario,
			Nome
	FROM Funcionario
END
GO
