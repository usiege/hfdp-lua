-- main process

-- strategy --
require "Strategy.duck"
-- require "object"  -- package
-- require "object2" -- module

print('-- strategy --')
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

print('---------------------')

-- decorator --
require "Decorator.beverage"
require "Decorator.condiment"

print('-- decorator --')
local beverage = Espresso:new()
print(beverage:description() .. ' $' .. beverage:cost())

print(Beverage:new{})
print(Beverage:new{})

-- _G = _G
local Mocha = Mocha
-- test create table different
local b1 = Mocha:new({}, beverage)
print(b1)
local b2 = Mocha:new({},beverage)
print(b2)

local beverage2 = DarkRoast:new()
print(beverage2:description() .. ' $' .. beverage2:cost())
print(beverage2)
beverage2 = Whip:init(beverage2)
print(beverage2:description() .. ' $' .. beverage2:cost())
print(beverage2)
beverage2 = Soy:init(beverage2)
print(beverage2:description() .. ' $' .. beverage2:cost())
print(beverage2)

-- TODO: 循环调用问题？
-- beverage2 = Mocha:init(beverage2)
-- print(beverage2:description() .. ' $' .. beverage2:cost())
-- print(beverage2)
-- beverage2 = Mocha:init(beverage2)
-- print(beverage2:description() .. ' $' .. beverage2:cost())
-- print(beverage2)

for i=1,10 do
  -- body...
  local b = CondimentDecorator:new()
  print(b)
end

-- local beverage3 = HouseBlend:new()
-- print(beverage3:description() .. ' $' .. beverage3:cost())
-- beverage3 = Mocha:init(beverage3)
-- print(beverage3:description() .. ' $' .. beverage3:cost())
-- beverage3 = Soy:init(beverage3)
-- print(beverage3:description() .. ' $' .. beverage3:cost())
-- beverage3 = Whip:init(beverage3)
-- print(beverage3:description() .. ' $' .. beverage3:cost())


print('---------------------')
