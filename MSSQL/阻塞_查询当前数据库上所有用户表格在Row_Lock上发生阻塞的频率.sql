--查询当前数据库上所有用户表格在Row Lock上发生阻塞的频率

DECLARE @dbid int
SELECT @dbid = db_id() 
SELECT 
　　dbid=database_id
　　,objectname = object_name(s.object_id) 
　　,indexname = i.name ,i.index_id
　　--,partition_number
　　,row_lock_count 
　　,row_lock_wait_count 
　　,[block %] = CAST(100.0 * row_lock_wait_count/(1+row_lock_count) AS numeric(15,2)) 
　　,row_lock_wait_in_ms 
　　,[avg row lock wait in ms] = CAST(1.0 * row_lock_wait_in_ms / (1 + row_lock_wait_count) AS numeric(15,2))
FROM 
　　sys.dm_db_index_operational_stats(@dbid,NULL,NULL,NULL) s
　　, sys.indexes i 
WHERE
    objectproperty(s.object_id,'IsUserTable') = 1
AND i.object_id = s.object_id
AND i.index_id = s.index_id 
ORDER BY 
　　row_lock_wait_count
DESC