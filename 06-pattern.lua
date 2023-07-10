
s = "hello world"

-- 返回子串，在目标字符串中存在的起止坐标
starts, ends = string.find(s, "hello")
print(starts, ends)
print(string.sub(s, starts, ends))

-- 直接返回匹配到的字串
print(string.match(s, "hello"))
dates = "today is 2023-07-10"
-- 高级匹配用法
print(string.match(dates, "%d+-%d+-%d+"))

--[[
函数string.gsub有3个必选参数：目标字符串、模式和替换字符串（replacementstring），
其基本用法是将目标字符串中所有出现模式的地方换成替换字符串：
返回2个个结果，1，替换后的字符串  2，发生替换的次数。
]]
print(string.gsub(s, "world", "lua"))



