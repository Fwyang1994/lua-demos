
-- 字符串
s="hello"
s1="good bye"
-- 字符串长度操作符#
print(#s)
print(#s1)
-- 字符串拼接 ..
-- 在Lua语言中，字符串是不可变量。字符串连接总是创建一个新字符串，而不会改变原来作为操作数的字符串
print(s .. s1 .. 22)

-- 多行字符串变量的声明
sn = [[
aa
bb
]]
print(sn)
-- 为了避免定界符重复，也可以在两个中括号之间加任意数量的 = 号，
-- 也就是说 多行字符串的定界符的表达式其实是这样 \[[=]*\[
sn1 = [===[
aa
bb
]===]
print(sn1)

-- 字符串和数值 之间的 强制类型转换
s = 10 .. 20
print(s, type(s))
print("10" + 1)

-- 显式转换
n = tonumber("10")
n = tonumber("10e3")
n = tonumber("-3")
print( n, type(n) )

-- 字符串标准库 string.
print( string.len(s) )

-- demos:
-- 字符串翻转
print( string.reverse(s) )
-- 转大写
print( string.upper(s1) )
-- char 和 byte
-- byte 返回字符串第i个字符的 ASCII码
print( string.byte("abc") )
print( string.byte("abc", 2) )
print( string.byte("abc", 3) )
-- char byte 数值 转字符， 或合并字符串
print( string.char(97, 98, 99) )

-- format 格式化字符串
print( string.format("x=%d, y=%d", 1, 2) )
print( string.format("c=%x", 200) )  -- 16进制
print( string.format("f=%f", 3.1415) )  -- float 浮点数
print( string.format("f=%.2f", 3.1415) )  -- float 浮点数, 限制小数点后的位数

-- 请编写一个函数，使之实现在某个字符串的指定位置插入另一个字符串
function strInsert(str, i, block)
    prefix = string.sub(str, 0, i-1)
    suffix = string.sub(str, i)
    return prefix .. block .. suffix
end

print( strInsert("hello world", 7, "small") )
print( strInsert("hello world", 1, "small") )