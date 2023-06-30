
--[[
对于文件操作来说，I/O库提供了两种不同的模型。简单模型虚拟了一个当前输入流（ current input stream ）和一个当前输出流（ current output stream ），其I/O操作是通过这些流实现的。
I/O库把当前输入流初始化为进程的标准输入（C语言中的stdin），将当前输出流初始化为进程的标准输出（C语言中的stdout）。因此，当执行类似于io.read（）这样的语句时，就可以从标准输入中读取一行。
]]

--[[
函数io.input和函数io.output可以用于改变当前的输入输出流。
调用io.input（filename）会以只读模式打开指定文件，并将文件设置为当前输入流。之后，所有的输入都将来自该文件，除非再次调用io.input。
对于输出而言，函数io.output的逻辑与之类似。
如果出现错误，这两个函数都会抛出异常。如果想直接处理这些异常，则必须使用完整I/O模型。
]]

--[[
作为原则，应该只在“用后即弃”的代码或调试代码中使用函数print；当需要完全控制输出时，应该使用函数io.write。
与函数print不同，函数io.write不会在最终的输出结果中添加诸如制表符或换行符这样的额外内容。此外，函数io.write允许对输出进行重定向，而函数print只能使用标准输出。
最后，函数print可以自动为其参数调用tostring，这一点对于调试而言非常便利，但这也容易导致一些诡异的Bug。
]]

io.write("abc\n")
io.write(222)

-- 函数io.read可以从当前输入流中读取字符串，其参数决定了要读取的数据：
-- "a" 读取整个文件   "l" 读取下一行（丢弃换行符）  "L" 读取下一行（保留换行符）   "n" 读取一个数值   num 以字符串类型读取 num 个字符

-- 会以只读模式打开指定文件，并将文件设置为当前输入流。
io.input("./00-hello.lua")
-- 读取整个文件
--str = io.read("a")
-- 输出信息到控制台 console
--io.write(str)

-- 逐行迭代一个文件 io.lines
--local count = 0
--for line in io.lines() do
--    -- 带上行号
--    count = count + 1
--    io.write(string.format("%6d ", count), line, "\n")
--end

-- 将所有行读取到表 lines
--local lines = {}
--for line in io.lines() do
--    lines[#lines + 1] = line
--end
--
--table.sort(lines)
---- 输出所有的行
--for _, line in ipairs(lines) do
--    io.write(line, "\n")
--end
