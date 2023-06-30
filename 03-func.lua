
--[[
调用函数时使用的参数个数可以与定义函数时使用的参数个数不一致。
Lua语言会通过抛弃多余参数和将不足的参数设为nil的方式来调整参数的个数。
]]
function test(a, b)
    print( a, b )
end

test()   -- 参数不足的会用 nil 填充
test("a")   -- 参数不足的会用 nil 填充
test("a", "b")
test("a", "b", "c")  -- 多余的传参会被丢弃

-- 函数可以有多个返回值
str1 = "hello lua world!"
s, e = string.find( str1, "lua")
print( s, e )
print( string.sub(str1, s, e) )

-- 返回多个结果
function testMulti(a, b)
    return a, b
end

-- 在多重赋值中，如果一个函数没有返回值或者返回值个数不够多，那么
--Lua语言会用nil来补充缺失的值
r1, r2, r3 = testMulti("a", "b")
print( r1, r2, r3 )

--[[
Lua语言中的函数可以是可变长参数函数（ variadic ），即可以支持数量
可变的参数。例如，我们已经使用一个、两个或更多个参数调用过函数print。
]]
-- 可变长参数函数， 返回所有传参的总和
-- 参数列表中的三个点（...）表示该函数的参数是可变长的。
-- 表达式{...}的结果是一个由所有可变长参数组成的列表，该函数会遍历该列表来累加其中的元素。
function sumAll(...)
    sum = 0
    -- 遍历所有可变长参数
    --for _, v in ipairs{...} do
    --    sum = sum + v
    --end

    -- 另一种遍历方式 使用 select()函数
    --[[
        函数select总是具有一个固定的参数 selector ，以及数量可变的参数。如果selector是数值n，
        那么函数select则返回第n个参数后的所有参数；否则，selector应该是字符串"#"，以便函数select返回额外参数的总数。
    ]]
    for i = 1, select("#", ...) do
        sum = sum + select(i, ...)
    end
    return sum
end

print( sumAll(1, 2) )
print( sumAll(1, 2, 3, 4) )

-- 函数 table.pack()  table.unpack
--[[
函数table.unpack与函数table.pack的功能相反。pack把参数列表转换成Lua语言中一个真实的列表（一个表），
而unpack则把Lua语言中的真实的列表（一个表）转换成一组返回值，进而可以作为另一个函数的参数被使用。
]]

