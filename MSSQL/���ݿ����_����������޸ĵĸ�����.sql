--返回最经常被修改的个索引

--通过它们的DataBase_id、object_id、index_id和partition_number

--可以找到他们是哪个数据库上的哪个索引

SELECT TOP 100 *
FROM 
　　sys.dm_db_index_operational_stats(NULL,NULL,NULL,NULL) 
ORDER BY 
　　leaf_insert_count + leaf_delete_count + leaf_update_count DESC