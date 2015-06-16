USE IMHU_USF

DECLARE @sp_names as varchar(255)
DECLARE @sp_position INT
DECLARE @current_sp as varchar(100)

select @sp_names = 'EncomendaGetAll,EncomendaGetAllByData,FuncionarioInserir,FuncionarioPerfilInserir,PerfilInserir,PerfilGetAll,PickingInserir,PickingProdutoActualizar,PickingProdutoInserir,ProdutoGetAll,ProdutoInserir'
WHILE 1=1
begin
	SELECT @sp_position = CHARINDEX(',',@sp_names)
	SELECT @current_sp = SUBSTRING(@sp_names,1,@sp_position-1)
	
	IF EXISTS (
		SELECT *
		FROM sys.objects
		WHERE type in (N'P',N'PC') 
		AND object_id = OBJECT_ID(@current_sp)
	)
	exec('DROP PROCEDURE ' +  @current_sp)
	if(CHARINDEX(',',@sp_names) > 0)
		break;
	SELECT @sp_names = SUBSTRING(@sp_names,@sp_position+1,LEN(@sp_names)-@sp_position)

end

	print @sp_names
