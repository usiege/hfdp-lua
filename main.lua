require "Strategy.duck"

-- main process
print(Object.name)

local duck = Duck:new({})
print(duck.name)


local m_duck = MallarDuck:new()
print(m_duck.name)
m_duck:fly()

local fly = FlyRocketPowered:new()
m_duck:setFly(fly)
m_duck:performFly()

local fly2 = FlyNoWay:new()
m_duck:setFly(fly2)
m_duck:performFly()






