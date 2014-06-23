--下面的 DMV 查询可用于查找哪些批处理/请求生成的 I/O 最多。如下所示的 DMV 查询可用于查找可生成最多 I/O 的前五个请求。调整这些查询将提高系统性能。

select top 5 
    (total_logical_reads/execution_count) as avg_logical_reads,
    (total_logical_writes/execution_count) as avg_logical_writes,
    (total_physical_reads/execution_count) as avg_phys_reads,
     Execution_count, 
    statement_start_offset as stmt_start_offset, 
    sql_handle, 
    plan_handle
from sys.dm_exec_query_stats  
order by  (total_logical_reads + total_logical_writes) Desc