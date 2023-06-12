

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
t = type(5)
t = type("a")
t = type(true) --> 将除Boolean值false和nil外的所有其他值视为真。特别的是，在条件检测中Lua语言把零和空字符串也都视为真。
t = type(nil)
t = type(io.stdin)  --> userdata  用户数据被用来表示由应用或C语言编写的库所创建的新类型。例如，标准I/O库使用用户数据来表示打开的文件。
t = type(print)  --> function
t = type(type) --> function
t = type({}) --> table
t = type(type({}))  -->string
print(t)