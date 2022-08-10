-- 调味品
require "Decorator.beverage"

local Beverage = Beverage
-- 装饰者
local CondimentDecorator = { _beverage = nil}
setmetatable(CondimentDecorator, {__index = Beverage})


-- 牛奶
Milk = CondimentDecorator:new()
function Milk: init(beverage)
    self._beverage = beverage
    return self
end
function Milk: description()
    return self._beverage:description() .. ' +' .. ' milk'
end
function Milk: cost()
    return self._beverage:cost() + 0.1
end

-- 豆浆
Soy = CondimentDecorator:new()
-- setmetatable(Soy, {__index = CondimentDecorator})
function Soy: init(beverage)
    self._beverage = beverage
    return self
end
function Soy: description()
    -- return self._beverage.description() .. ' +' .. ' soy'
    return self._beverage:description() .. ' +' .. ' soy'
end
function Soy: cost()
    return self._beverage:cost() + 0.15
end

-- 奶泡
Whip = CondimentDecorator:new()
function Whip: init(beverage)
    self._beverage = beverage
    return self
end
function Whip: description()
    return self._beverage:description() .. ' +' .. ' whip'
end
function Whip: cost()
    return self._beverage:cost() + 0.10
end

-- 摩卡
local Mocha = CondimentDecorator:new({})
function Mocha: init(beverage)
    print('beverage')
    print(beverage)
    if self == beverage then
        self = CondimentDecorator:new({})
    end
    self._beverage = beverage
    print(self)
    print(Mocha)
    return self
end
function Mocha: description()
    print(self)
    return self._beverage:description() .. ' +' .. ' mocha'
end
function Mocha: cost()
    return self._beverage:cost() + 0.2
end

_G["CondimentDecorator"] = CondimentDecorator
_G["Mocha"] = Mocha

-- return condiment
