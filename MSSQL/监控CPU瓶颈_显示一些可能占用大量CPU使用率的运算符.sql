--下面的查询显示一些可能占用大量 CPU 使用率的运算符（例如 ‘%Hash Match%’、‘%Sort%’）以找出可疑对象。

select *
from 
      sys.dm_exec_cached_plans
      cross apply sys.dm_exec_query_plan(plan_handle)
where 
      cast(query_plan as nvarchar(max)) like '%Sort%'
      or cast(query_plan as nvarchar(max)) like '%Hash Match%'
--如果已检测到效率低下并导致 CPU 占用率较高的查询计划，请对该查询中涉及的表运行 UPDATE STATISTICS 
--以查看该问题是否仍然存在。然后，收集相关数据并将此问题报告给 PerformancePoint 规划支持人员。

--如果您的系统存在过多的编译和重新编译，可能会导致系统出现与 CPU 相关的性能问题。

--您可以运行下面的 DMV 查询来找出过多的编译/重新编译。

select * from sys.dm_exec_query_optimizer_info
where 
counter = 'optimizations'
or counter = 'elapsed time'