DECLARE @d datetime
SET @d=getdate()

--真正执行的SQL

SELECT [语句执行花费时间(毫秒)]=datediff(ms,@d,getdate())