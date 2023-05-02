-- ================================================
-- Template generated from Template Explorer using:
-- Create Scalar Function (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the function.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION PositiveNumber
(
	@num int
)
RETURNS varchar(20)
AS
BEGIN
	-- Declare the return variable here
	DECLARE @ans varchar(20)

	-- Add the T-SQL statements to compute the return value here
	if (@num<0)
	set @ans = 'negative number'
	else 
	set @ans = 'positive number'


	


	-- Return the result of the function
	RETURN @ans

END
GO
select dbo.PositiveNumber(-3) as result
