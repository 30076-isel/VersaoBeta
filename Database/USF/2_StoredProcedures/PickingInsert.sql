USE IMHU_USF;

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Paulo Coelho>
-- Create date: <04-06-2015>
-- Description:	<Permite Inserir os dados relativos à acção de Picking>
-- =============================================
CREATE PROCEDURE PickingInsert
	-- Add the parameters for the stored procedure here
	@Data_Picking	DATE,
	@ID_Funcionario VARCHAR(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO Picking (Data_Picking,ID_Funcionario) VALUES (@Data_Picking,@ID_Funcionario);
END
GO
