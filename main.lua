local a = 1
local function math(num1,num2,num3)
    local semiresult = num1 * (num2 + num3)
    return (semiresult * num1) / num3 
end
print(math(0,0,0))