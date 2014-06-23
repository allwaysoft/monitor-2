--计算'Cxpacket'占整wait时间的百分比

DECLARE @Cxpacket bigint
DECLARE @Sumwaits bigint
SELECT @Cxpacket = wait_time_ms 
FROM 
　　sys.dm_os_wait_stats
WHERE wait_type = 'Cxpacket'
SELECT
    @Sumwaits = sum(wait_time_ms) 
FROM sys.dm_os_wait_stats
SELECT CONVERT(numeric(5,4),@Cxpacket/@Sumwaits)