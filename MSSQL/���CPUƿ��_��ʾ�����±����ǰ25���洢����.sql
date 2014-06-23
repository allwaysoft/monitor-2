--下面的示例查询显示已重新编译的前 25 个存储过程。plan_generation_num 指示该查询已重新编译的次数。

select top 25
      sql_text.text,
      sql_handle,
      plan_generation_num,
      execution_count,
      dbid,
      objectid 
from sys.dm_exec_query_stats a
      cross apply sys.dm_exec_sql_text(sql_handle) as sql_text
where plan_generation_num > 1
order by plan_generation_num desc
--效率较低的查询计划可能增大 CPU 占用率。