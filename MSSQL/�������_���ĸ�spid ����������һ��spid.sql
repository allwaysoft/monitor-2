--若要找出哪个 spid 正在阻塞另一个 spid，可在数据库中创建以下存储过程，然后执行该存储过程。此存储过程会报告此阻塞情况。键入 sp_who 可找出 @spid；@spid 是可选参数。

create proc dbo.sp_block (@spid bigint=NULL)
as
select 
    t1.resource_type,
    'database'=db_name(resource_database_id),
    'blk object' = t1.resource_associated_entity_id,
    t1.request_mode,
    t1.request_session_id,
    t2.blocking_session_id    
from 
    sys.dm_tran_locks as t1, 
    sys.dm_os_waiting_tasks as t2
where 
    t1.lock_owner_address = t2.resource_address and
    t1.request_session_id = isnull(@spid,t1.request_session_id)
--以下是使用此存储过程的示例。

exec sp_block
exec sp_block @spid = 7