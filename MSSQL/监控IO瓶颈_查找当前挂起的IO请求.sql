--使用以下 DMV 查询来查找当前挂起的 I/O 请求。请定期执行此查询以检查 I/O 子系统的运行状况，并隔离 I/O 瓶颈中涉及的物理磁盘。

select 
    database_id, 
    file_id, 
    io_stall,
    io_pending_ms_ticks,
    scheduler_address 
from  sys.dm_io_virtual_file_stats(NULL, NULL)t1,
        sys.dm_io_pending_io_requests as t2
where t1.file_handle = t2.io_handle
--在正常情况下，该查询通常不返回任何内容。如果此查询返回一些行，则需要进一步调查。

--您还可以执行下面的 DMV 查询以查找 I/O 相关查询。

select top 5 (total_logical_reads/execution_count) as avg_logical_reads,
                   (total_logical_writes/execution_count) as avg_logical_writes,
           (total_physical_reads/execution_count) as avg_physical_reads,
           Execution_count, statement_start_offset, p.query_plan, q.text
from sys.dm_exec_query_stats
      cross apply sys.dm_exec_query_plan(plan_handle) p
      cross apply sys.dm_exec_sql_text(plan_handle) as q
order by (total_logical_reads + total_logical_writes)/execution_count Desc