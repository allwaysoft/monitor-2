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

--如果已检测到过多的编译或重新编译，请尽可能多地收集相关数据并将其报告给规划支持人员。