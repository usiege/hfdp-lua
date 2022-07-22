require "object"
-- Fly interface

Fly = {
    name = "fly behavior"
}
setmetatable(Fly, {__index = Object})

function Fly :fly()
    print("Fly --- fly")
end

FlyNoWay = {__index = Fly}
function FlyNoWay: fly()
    print("I can not fly~")
end

FlyWithWings = {__index = Fly}
function FlyWithWings: fly(args)
    print("I can fly with wings~")
end


----------------------

-- quark interface

Quark = {
    name = 'quark behavior'
}
setmetatable(Quark, {__index = Object})

function Quark :quark()
    print("Quark --- quark")
end
