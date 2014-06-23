--下面显示用于找出过多编译/重新编译的 DMV 查询。

select * from sys.dm_exec_query_optimizer_info
where 
      counter = 'optimizations'
      or counter = 'elapsed time'