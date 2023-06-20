
N = 8
function isplaceok(a, n, c)
    for i = 1, n - 1 do --对于每一个已经被放置的皇后
        if (a[i] == c) or --同一列？
                (a[i] - i == c - n) or -- 同一对角线？
                (a[i] + i == c + n) then   --同一对角线？
            return false  --位置会被攻击
        end
    end
    return true --不会被攻击；位置有效
end


--打印棋盘
function printsolution (a)
    for i = 1, N do
        --对于每一行
        for j = 1, N do
            --和每一列
            --输出X"或-"，外加一个空格
            io. write(a[i] == j and "x" or "-", " ")
        end
        io.write("\n")
    end
    io.write("\n")
end


--把从n到N的所有皇后放在棋盘'a'上
function addqueen (a, n)
    if n > N then
        --是否所有的皇后都被放置好了？
        printsolution(a)
        return nil
        --os.exit()
    else
        --尝试着放置第n个皇后
        for c = 1, N do
            if isplaceok(a, n, c) then
                a[n] = c  --把第n个皇后放在列'c'
                if addqueen(a, n + 1) == nil then
                    break
                end
            end
        end
        return 1
    end
end

addqueen({}, 1)
