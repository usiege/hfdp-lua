-- 抽象基类, 无任何实现
require "object"

Duck = {
    name = 'duck',
    fly = {},
    quark = {},
}
setmetatable(Duck, {__index = Object})



