require "object"
-- Fly interface

Fly = {
    name = "fly behavior"
}
setmetatable(Fly, {__index = Object})

-- class new 
function Fly :new(o)
    o = o or {}
    setmetatable(o, self)
    self.__index = self -- 表 -> 是否有元表 -> 元表__index
    return o
end

function Fly :fly()
    print("Fly --- fly")
end

-- FlyNoWay = {name = 'no way'}
-- setmetatable(FlyNoWay, {__index = Fly})

-- 下面两种继承方式都可以
-- FlyNoWay, FlyWithWings是一种
-- FlyRocketPowered是一种
FlyNoWay = Fly:new{
    name = 'no way'
}
function FlyNoWay: fly()
    print("I can not fly~")
end

FlyWithWings = {name = 'with wings'}
setmetatable(FlyWithWings, {__index = Fly})

function FlyWithWings: fly(args)
    print("I can fly with wings~")
end

-- 继承必须设置元表
FlyRocketPowered = Fly:new({
    name = 'rocket powered'
})
function FlyRocketPowered: fly()
    print('I can fly with rocket powered')
end

----------------------

-- quark interface

Quark = {
    name = 'quark behavior'
}
setmetatable(Quark, {__index = Object})

-- class new 
function Quark :new(o)
    o = o or {}
    setmetatable(o, self)
    -- print(o.__index)
    self.__index = self -- 表 -> 是否有元表 -> 元表__index
    return o
end

function Quark :quark()
    print("Quark --- quark")
end
