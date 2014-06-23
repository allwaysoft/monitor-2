--开始内存压力检测和调查之前，请确保已启用 SQL Server 中的高级选项。请先对 master 数据库运行以下查询以启用此选项。

sp_configure 'show advanced options'
go
sp_configure 'show advanced options', 1
go
reconfigure
go
--首先运行以下查询以检查内存相关配置选项。

sp_configure 'awe_enabled'
go
sp_configure 'min server memory'
go
sp_configure 'max server memory'
go
sp_configure 'min memory per query'
go
sp_configure 'query wait'
go
--运行下面的 DMV 查询以查看 CPU、计划程序内存和缓冲池信息。

select 
cpu_count,
hyperthread_ratio,
scheduler_count,
physical_memory_in_bytes / 1024 / 1024 as physical_memory_mb,
virtual_memory_in_bytes / 1024 / 1024 as virtual_memory_mb,
bpool_committed * 8 / 1024 as bpool_committed_mb,
bpool_commit_target * 8 / 1024 as bpool_target_mb,
bpool_visible * 8 / 1024 as bpool_visible_mb
from sys.dm_os_sys_info