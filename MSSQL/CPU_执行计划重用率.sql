性能计数对象SQLServer:SQL Statistics 下面有几个计数器，可以计算出大致的执行计划重用率。计算方法是：

Initial Compilations = SQL Compilations/sec – SQL Re-Compilations/sec

执行计划重用率 = （Batch request/sec – Initial Compilations/sec）/Batch requests/sec