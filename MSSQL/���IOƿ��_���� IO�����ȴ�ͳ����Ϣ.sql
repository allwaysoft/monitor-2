--检查闩锁等待统计信息以确定 I/O 瓶颈。运行下面的 DMV 查询以查找 I/O 闩锁等待统计信息。

select wait_type, waiting_tasks_count, wait_time_ms, signal_wait_time_ms, wait_time_ms / waiting_tasks_count
from sys.dm_os_wait_stats  
where wait_type like 'PAGEIOLATCH%'  and waiting_tasks_count > 0
order by wait_type
--如果 waiting_task_counts 和 wait_time_ms 与正常情况相比有显著变化，则可以确定存在 I/O 问题。获取 SQL Server 平稳运行时性能计数器和主要 DMV
--查询输出的基线非常重要。

--这些 wait_types 可以指示您的 I/O 子系统是否遇到瓶颈。