require "object"
-- Fly interface

Fly = {
    name = "fly behavior"
}
setmetatable(Fly, {__index = Object})

----------------------

-- quark interface

Quark = {
    name = 'quark behavior'
}
setmetatable(Quark, {__index = Object})


