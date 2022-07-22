-- 抽象基类, 无任何实现
require "object"
require "Strategy.behavior"

Duck = {
    name = 'duck',
    fly = nil,
    quark = nil,
}
setmetatable(Duck, {__index = Object})

-- class new 
function Duck :new(o)
    o = o or {}
    setmetatable(o, self)
    return o
end

function Duck: setFly(fly)
    self.fly = fly
end

function Duck: setQuark(quark)
    self.quark = quark
end

function Duck: performFly()
    self.fly:fly()
end

function Duck : performQuark()
    self.quark:quark()
end

