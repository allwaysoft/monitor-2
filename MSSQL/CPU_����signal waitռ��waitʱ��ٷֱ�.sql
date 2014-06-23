-- 计算signal wait占整wait时间百分比

SELECT
 　　convert(numeric(5,4),sum(signal_wait_time_ms)/sum(wait_time_ms)) 
FROM 
　　sys.dm_os_wait_stats