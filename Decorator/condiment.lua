-- 调味品
require "Decorator.beverage"

local Beverage = Beverage
-- 装饰者
local CondimentDecorator = { _beverage = nil}
setmetatable(CondimentDecorator, {__index = Beverage})
function CondimentDecorator:init(beverage)
    -- create a new table using super
    local o = self:new({}) 
    -- link super and self
    setmetatable(o, self) 
    -- attach new properties
    self._beverage = beverage 
    return o -- back new table
end

-- 牛奶
Milk = {}
setmetatable(Milk,{__index = CondimentDecorator})
function Milk: description()
    return self._beverage:description() .. ' +' .. ' milk'
end
function Milk: cost()
    return self._beverage:cost() + 0.1
end

-- 豆浆
Soy = {}
setmetatable(Soy, {__index = CondimentDecorator})
function Soy: description()
    return self._beverage.description() .. ' +' .. ' soy'
end
function Soy: cost()
    return self._beverage.cost() + 0.15
end

-- 奶泡
Whip = {}
setmetatable(Whip, {__index = CondimentDecorator})
function Whip: description()
    return self._beverage:description() .. ' +' .. ' whip'
end
function Whip: cost()
    return self._beverage:cost() + 0.10
end

-- 摩卡
local Mocha = {}
setmetatable(Mocha, {__index = CondimentDecorator})
function Mocha: description()
    return self._beverage:description() .. ' +' .. ' mocha'
end
function Mocha: cost()
    return self._beverage:cost() + 0.2
end

_G["CondimentDecorator"] = CondimentDecorator
_G["Mocha"] = Mocha

-- return condiment
