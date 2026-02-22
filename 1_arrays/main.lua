-- The most important data structure: map or array

local array = {3, 2, 1}

print("array[1] = " .. array[1])

-- How to iterate over array?
for i, value in ipairs(array) do
  print("i=" .. i .. " value=" .. value)
end

-- Map creation

local localMap = {
  first = 100,
  second = 200
}

print("map.first = " .. localMap.first)

-- How to iterate over map?

local nextF, t, val = pairs(localMap) -- interesting iterator
-- this returns next values:
-- nextF - function that takes array and the next id
-- t - actual array
-- value - well, value

local key, value, nextItem = nextF(t, val) -- call and retrieve
print("key=" .. key .. " value=" .. value, nextItem)

-- iterating over the items
for i, value in pairs(localMap) do
  print(i .. " value: " .. value)
end

