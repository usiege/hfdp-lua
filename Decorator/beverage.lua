-- 对饮料进行抽象
require "object"

local Beverage = {
    name = 'Unknown Beverage'
}
setmetatable(Beverage, {__index = Object})

-- 饮料类
function Beverage: new(o)
    o = o or {}
    setmetatable(o, self)
    self.__index = self
    return o
end

function Beverage: cost()
    return nil


end

function Beverage: description()
    -- print(self.name..':')
    return self.name
end

-- 家庭混合咖啡
HouseBlend = { name = 'House Blend Coffee'}
setmetatable(HouseBlend, {__index = Beverage})
function HouseBlend: cost()
    return 0.89
end
-- 深焙咖啡
DarkRoast = { name = "Dark Roast Coffee"}
setmetatable(DarkRoast, {__index = Beverage})
function DarkRoast: cost()
    return 0.99
end

-- 特浓咖啡
Espresso = Beverage:new({
    name = 'Espresso'
})
function Espresso: cost()
    return 1.99
end

-- 低咖啡因咖啡
Decaf = Beverage:new({
    name = 'Decaf Coffee'
})
function Decaf: cost()
    return 1.05
end


_G.Beverage = Beverage