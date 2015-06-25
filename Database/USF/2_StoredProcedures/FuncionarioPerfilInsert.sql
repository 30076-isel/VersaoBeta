USE IMHU_USF;

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Paulo Coelho>
-- Create date: <04-06-2015>
-- Description:	<Atribui um perfil ao Funcionario>
-- =============================================
CREATE PROCEDURE FuncionarioPerfilInsert
	-- Add the parameters for the stored procedure here
	@ID_Funcionario VARCHAR(50),
	@ID_Perfil	INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO FuncionarioPerfil (ID_Funcionario,ID_Perfil) VALUES (@ID_Funcionario,@ID_Perfil);
END
GO
