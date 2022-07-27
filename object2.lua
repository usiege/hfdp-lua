Object = {
    name = 'object 2'
}
-- 将 table 的元表 设置为 metatable
--[=[
__index 这是一种继承
当我们访问一个表的不存在的域，返回结果为 nil，这是正确的，但并不一定正确。
实际上，这种访问触发 lua 解释器去查找__index metamethod:如果不存在，返回结果为 nil;
如果存在则由__index metamethod 返回结果。 
--]=]
setmetatable(Object, {__index = Object})
Object.__index = Object

function Object :print(...)
    print(self.name)
end