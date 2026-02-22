local firstModule = require("module_1") -- I am not sure this will work

print(someGlobalValue) -- module_1 silently declares someGlobalValue
print(firstModule.name) -- using name as a name
