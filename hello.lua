

print("hello")

function fact(n)
    if n == 0 then
        return 1
    else
        return n * fact(n-1)
    end
end

--print("please scanf a number...\n")
--a = io.read("*n")  -- 读取一个数字
--print(fact(a))

--[[
这个是多行注释
]]

-- 数据类型
--t = type(5)
--t = type("a")
--t = type(true) --> 将除Boolean值false和nil外的所有其他值视为真。特别的是，在条件检测中Lua语言把零和空字符串也都视为真。
--t = type(nil)
--t = type(io.stdin)  --> userdata  用户数据被用来表示由应用或C语言编写的库所创建的新类型。例如，标准I/O库使用用户数据来表示打开的文件。
--t = type(print)  --> function
--t = type(type) --> function
--t = type({}) --> table
--t = type(type({}))  -->string
--print(t)


-- 命令行参数
--[[
编译器在运行代码前会创建一个名为arg的表，其中存储了所有的命令行参
数。索引0中保存的内容为脚本名，索引1中保存的内容为第一个参数（本例中
的"a"），依此类推；而在脚本之前的所有选项则位于负数索引上
]]
--print(arg[0])  -- 脚本文件名
--print(arg[1])  -- 文件名之后的第一个命令行参数

a=1
b=2
--print(a == b)
--print(a ~= b) -- 这个是 != ，换了写法

-- 标准数学库math
-- 用于设置伪随机数发生器的种子
--math.randomseed(os.time())
--print( math.random(6) )

-- 除了 floor ceil 之外 还有 modf，向0取整
--print(math.modf(3.3))
--print(math.modf(-3.3))

-- 字符串
s="hello"
s1="good bye"
-- 字符串长度操作符#
print(#s)
print(#s1)
-- 字符串拼接 ..
-- 在Lua语言中，字符串是不可变量。字符串连接总是创建一个新字符串，而不会改变原来作为操作数的字符串
print(s .. s1 .. 22)


