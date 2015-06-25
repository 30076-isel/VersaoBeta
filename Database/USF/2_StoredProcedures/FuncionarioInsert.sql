USE IMHU_USF;

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Paulo Coelho>
-- Create date: <05-06-2015>
-- Description:	<Insere um novo funcionario, caso o mesmo nao exista>
-- =============================================
CREATE PROCEDURE FuncionarioInsert
	-- Add the parameters for the stored procedure here
	@ID_Funcionario VARCHAR(100),
	@Nome	NVARCHAR(100),
	@Contacto INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF( NOT EXISTS ( 
			SELECT * 
			FROM Funcionario 
			WHERE ID_Funcionario = @ID_Funcionario)
		)
		INSERT INTO Funcionario (ID_Funcionario,Nome,Contacto) 
		VALUES (@ID_Funcionario,@Nome,@Contacto);
END
GO
