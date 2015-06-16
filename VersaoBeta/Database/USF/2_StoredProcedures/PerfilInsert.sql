USE IMHU_USF;

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Paulo Coelho>
-- Create date: <04-06-2015>
-- Description:	<Permite Inserir um Perfil para posteriormente se associar a um Funcionário>
-- =============================================
CREATE PROCEDURE PerfilInsert
	-- Add the parameters for the stored procedure here
	@ID_Perfil INT,
	@Designacao NVARCHAR(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO Perfil (ID_Perfil,Designacao) VALUES (@ID_Perfil,@Designacao);
END
GO
