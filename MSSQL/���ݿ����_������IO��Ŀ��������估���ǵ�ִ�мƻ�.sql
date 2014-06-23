--返回做I/O数目最多的条语句及它们的执行计划

SELECT TOP 50 (total_logical_reads/execution_count) AS avg_logical_reads
　　, (total_logical_writes/execution_count) AS avg_logical_writes
　　, (total_physical_reads/execution_count) AS avg_phys_reads, Execution_count
　　, statement_start_offset AS stmt_start_offset
　　, statement_end_offset AS stmt_end_offset
　　, SUBSTRING(sql_text.text,(statement_start_offset/2)
　　, CASE WHEN (statement_end_offset - statement_start_offset)/2 <=0
    THEN
       64000
    ELSE (statement_end_offset
    - statement_start_offset)/ 2
    END) AS exec_statement, sql_text.text, plan_text.*
FROM 
　　sys.dm_exec_query_stats
CROSS APPLY 
　　sys.dm_exec_sql_text(sql_handle) AS sql_text 
CROSS APPLY 
　　sys.dm_exec_query_plan(plan_handle)  as plan_text 
ORDER BY (total_logical_reads + total_logical_writes) / Execution_count 
DESC