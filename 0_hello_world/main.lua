-- Comment in Lua, I will use comments for explainig the methods

local input = arg[1] -- this is interesting: local
-- local is just a local variable as opposed to global one
-- then the name, and then the arg[0]
-- arg is a global value that is actually injected by interpreter

local hello_world = function(name)
	if input == "Dawid" then
	  print("Hello you")
	else
	  print("Hello " .. input .. "!") -- concatening strings by ..
	end
end

function emptyOne() 
  -- function does not have to define anything or return anything
end
emptyOne()

local not_a_value = nil -- nil seems to be null

hello_world(input)
