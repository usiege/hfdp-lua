-- 抽象基类, 无任何实现
-- 这里要抽象的是鸭子类型
require "object"
require "Strategy.behavior"

Duck = {
    name = 'duck',
    fly_behavior = nil,
    quark_behavior = nil,
    display = nil   --
}
setmetatable(Duck, {__index = Object})

-- 类 对象
function Duck :new(o)
    o = o or {}
    setmetatable(o, self)
    -- print(o.__index)
    self.__index = self -- 表 -> 是否有元表 -> 元表__index
    return o
end

function Duck: fly()
    self.fly_behavior.fly()
end

function Duck: quark()
    self.quark_behavior.quark()
end

function Duck: setFly(fly)
    self.fly_behavior = fly
end

function Duck: setQuark(quark)
    self.quark_behavior = quark
end



-- 继承
MallarDuck = Duck:new({
    name = 'mallar duck',
    fly_behavior = FlyWithWings:new(), -- 有翅膀
    quark_behavior = Quark:new()    -- 占位，无任何动作
})

function MallarDuck: performFly()
    self.fly_behavior.fly()
end

function MallarDuck: performQuark()
    self.quark_behavior.quark()
end
