--返回最经常运行的条语句
SELECT TOP 100
    cp.cacheobjtype 
　　,cp.usecounts 
　　,cp.size_in_bytes 
　　,qs.statement_start_offset 
　　,qs.statement_end_offset
　　,qt.dbid ,qt.objectid 
　　,SUBSTRING(qt.text,qs.statement_start_offset/2, (case when qs.statement_end_offset = -1
       then len(convert(nvarchar(max),qt.text)) * 2
       else qs.statement_end_offset end - qs.statement_start_offset) / 2) AS statement 

FROM 
　　sys.dm_exec_query_stats qs 
CROSS APPLY 　
　　sys.dm_exec_sql_text(qs.sql_handle) as qt
INNER JOIN 
　　sys.dm_exec_cached_plans as cp
ON qs.plan_handle = cp.plan_handle
WHERE 
　　cp.plan_handle = qs.plan_handle
AND cp.usecounts>4
ORDER BY
    [dbid],[Usecounts]
DESC