# Monitor-By Robin Wen #

## Project Summary ##

> Monitor of Database, such as SQL  Server, Oracle and MySQL. This scripts collected via work. You may get massive useful skills throgh the script.

## Version Information ##
> Majority of scripts pass-test in RHEL 6.1, part of scripts pass-test in Debian 7.6/Ubuntu 14.04. Certainly, some scripts support MSSQL. I will give clear indication of this scripts in the **Scripts and Dirs Summary**.

## Change Log ##

2014-06-11
> Documentation version is **1.0**, Documentation name is **Monitor-By Robin Wen**, Comment is **All of Scripts pass-test**, By Robin。

2014-11-17
> Documentation version is **2.0**, Documentation name is **Monitor-By Robin Wen**, Comment is **All of Scripts pass-test, and and the summary of scripts**, By Robin。

## Lists of File ##

* MSSQL [d]
	* CPU_计算'Cxpacket'占整wait时间的百分比.sql [sql]
	* CPU_计算signal_wait占整wait时间百分比.sql [sql]
	* CPU_执行计划重用率.sql [sql]
	* 阻塞_查询当前数据库上所有用户表格在Row_Lock上发生阻塞的频率.sql [sql]
	* 执行sql次数和逻辑次数.sql [sql]
	* 前_20_个在读取_IO_方面开销最大的查询.sql [sql]
	* 得出查询速度.sql [sql]
	* 数据库设计_返回做IO数目最多的条语句及它们的执行计划.sql [sql]
	* 数据库设计_返回最经常运行的条语句.sql [sql]
	* 数据库设计_返回最经常被修改的个索引.sql [sql]
	* 监控_查询所有的DMV_DMF.sql [sql]
	* 监控CPU瓶颈_显示CPU平均占用率最高的前50个SQL语句.sql [sql]
	* 监控CPU瓶颈_找出过多编译_重新编译的DMV.sql [sql]
	* 监控CPU瓶颈_显示已重新编译的前25个存储过程.sql [sql]
	* 监控CPU瓶颈_显示已重新编译的前25个存储过程_New.sql [sql]
	* 监控CPU瓶颈_显示缓存计划所占用的CPU总使用率_带SQL文本.sql [sql]
	* 监控CPU瓶颈_显示一些可能占用大量CPU使用率的运算符.sql [sql]
	* 监控CPU瓶颈_显示哪个查询占用了最多的CPU累计使用率.sql [sql]
	* 监控CPU瓶颈_当前缓存的哪些批处理或过程占用了大部分CPU资源.sql [sql]
	* 监控IO瓶颈_查找_IO闩锁等待统计信息.sql [sql]
	* 监控IO瓶颈_查找当前挂起的IO请求.sql [sql]
	* 监控IO瓶颈_查找哪些批处理_请求生成的IO最多.sql [sql]
	* 监控内存瓶颈_查看CPU_计划程序内存和缓冲池信息.sql [sql]
	* 监控阻塞_显示SQL等待分析和前10个等待的资源.sql [sql]
	* 监控阻塞_查询出哪个spid_正在阻塞另一个spid.sql [sql]
	* 监控阻塞_查询可确定阻塞的会话.sql [sql]
	* 脚本来源.txt [txt]

## Scripts and Dirs Summary ##

### MSSQL [d] ###
> Monitot of MSSQL. Use this in Windows 7.

#### CPU_计算'Cxpacket'占整wait时间的百分比.sql [sql] ####
> 关于CPU，计算'Cxpacket'占整wait时间的百分比。

#### CPU_计算signal_wait占整wait时间百分比.sql [sql] ####
> 关于CPU，计算signal_wait占整wait时间百分比。

#### CPU_执行计划重用率.sql [sql] ####
> 关于CPU，执行计划重用率。

#### 阻塞_查询当前数据库上所有用户表格在Row_Lock上发生阻塞的频率.sql [sql]####
> 关于阻塞，查询当前数据库上所有用户表格在Row_Lock上发生阻塞的频率。

#### 执行sql次数和逻辑次数.sql [sql] ####
> 使用此脚本，查询出执行sql次数和逻辑次数。

#### 前_20_个在读取_IO_方面开销最大的查询.sql [sql] ####
> 查询出前20个在读取IO方面开销最大的查询。

#### 得出查询速度.sql [sql] ####
> 得出查询速度。

#### 数据库设计_返回做IO数目最多的条语句及它们的执行计划.sql [sql] ####
> 关于数据库设计，返回做IO数目最多的条语句及它们的执行计划。

#### 数据库设计_返回最经常运行的条语句.sql [sql] ####
> 关于数据库设计，返回最经常运行的条语句。

#### 数据库设计_返回最经常被修改的个索引.sql [sql] ####
> 关于数据库设计，返回最经常被修改的个索引。

#### 监控_查询所有的DMV_DMF.sql [sql] ####
> 关于监控，查询所有的DMV_DMF。

#### 监控CPU瓶颈_显示CPU平均占用率最高的前50个SQL语句.sql [sql] ####
> 关于监控CPU瓶颈，显示CPU平均占用率最高的前50个SQL语句。

#### 监控CPU瓶颈_找出过多编译_重新编译的DMV.sql [sql] ####
> 关于监控CPU瓶颈，找出过多编译和重新编译的DMV。

#### 监控CPU瓶颈_显示已重新编译的前25个存储过程.sql [sql] ####
> 关于监控CPU瓶颈，显示已重新编译的前25个存储过程。

#### 监控CPU瓶颈_显示已重新编译的前25个存储过程_New.sql [sql] ####
> 关于监控CPU瓶颈，显示已重新编译的前25个存储过程_New。

#### 监控CPU瓶颈_显示缓存计划所占用的CPU总使用率_带SQL文本.sql [sql] ####
> 关于监控CPU瓶颈，显示缓存计划所占用的CPU总使用率_带SQL文本。

#### 监控CPU瓶颈_显示一些可能占用大量CPU使用率的运算符.sql [sql] ####
> 关于监控CPU瓶颈，显示一些可能占用大量CPU使用率的运算符。

#### 监控CPU瓶颈_显示哪个查询占用了最多的CPU累计使用率.sql [sql] ####
> 关于监控CPU瓶颈，显示哪个查询占用了最多的CPU累计使用率。

#### 监控CPU瓶颈_当前缓存的哪些批处理或过程占用了大部分CPU资源.sql [sql] ####
> 关于监控CPU瓶颈，当前缓存的哪些批处理或过程占用了大部分CPU资源。

#### 监控IO瓶颈_查找_IO闩锁等待统计信息.sql [sql] ####
> 关于监控IO瓶颈，查找IO闩锁等待统计信息。

#### 监控IO瓶颈_查找当前挂起的IO请求.sql [sql] ####
> 关于监控IO瓶颈，查找当前挂起的IO请求。

#### 监控IO瓶颈_查找哪些批处理_请求生成的IO最多.sql [sql] ####
> 关于监控IO瓶颈，查找哪些批处理请求生成的IO最多。

#### 监控内存瓶颈_查看CPU_计划程序内存和缓冲池信息.sql [sql] ####
> 关于监控内存瓶颈，查看CPU计划程序内存和缓冲池信息。

#### 监控阻塞_显示SQL等待分析和前10个等待的资源.sql [sql] ####
> 关于监控阻塞，显示SQL等待分析和前10个等待的资源。

#### 监控阻塞_查询出哪个spid_正在阻塞另一个spid.sql [sql] ####
> 关于监控阻塞，查询出哪个spid正在阻塞另一个spid。

#### 监控阻塞_查询可确定阻塞的会话.sql [sql] ####
> 关于监控阻塞，查询可确定阻塞的会话。

#### 脚本来源.txt [txt] ####
> 描述这些脚本的来源。大多数来源于此：[](http://www.cnblogs.com/cnsym/p/3227766.html)，详细来源请参考此文件。

Enjoy!

## About Author ##

温国兵

* Robin Wen
* Gmail：dbarobinwen@gmail.com
* CSDN：http://blog.csdn.net/justdb
* GitHub：https://github.com/dbarobin
