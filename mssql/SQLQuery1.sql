IF EXISTS (SELECT *FROM SYSOBJECTS WHERE NAME=N'SorumlulariGetir')
DROP FUNCTION SorumlulariGetir
GO
CREATE FUNCTION SorumlulariGetir(@Masterid int)
RETURNS VARCHAR(500)
WITH ENCRYPTION 
AS
BEGIN

declare @xstr varchar(500)
set @xstr=''
select @xstr=@xstr+Sorumlu+',' from IsTakipSorumlular where Masterid=@Masterid order by Sorumlu
if @xstr <>'' 
set @xstr=LEFT(@xstr,len(@xstr)-1)

return @xstr
END
GO
SELECT dbo.SorumlulariGetir(2) SorumlulariGetir
GO

