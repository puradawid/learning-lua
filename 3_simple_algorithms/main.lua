-- Here's the problem, I have a list of points in space

local points = {
  {9, 9, 0},
  {3, 2, 1},
  {3, 3, 3},
  {3, 1, 1},
  {-10, -1, 1}
}

function toString(array)
  local result = ""
  for key, val in pairs(array) do
    result = result .. "{".. val[1] .. " " .. val[2] .. " " .. val [3] .. "}"
  end
  return result
end

-- Now, I want to sort them out by the closest to {0, 0, 0}

-- That requires calculating distance from center
function distance(p)
  return math.sqrt(p[1] * p[1] + p[2] * p[2] + p[3] * p[3])
end

-- That first requires comparing two points
function compare(p1, p2)
 return distance(p1) - distance(p2) 
end

print("Comparing 111 with 333 " .. compare({1, 1, 1}, {3, 3, 3}))
print("Comparing 333 with 111 " .. compare({3, 3, 3}, {1, 1, 1}))

function sort(pointsArray)
  -- bubble sort because why not
  -- TODO: copy the array
  for index, point in pairs(pointsArray) do
    for secondIndex, secondPoint in pairs(pointsArray) do
      print(index .. " " .. secondIndex)
      print(toString(pointsArray))
      if(index ~= secondIndex and compare(pointsArray[index], pointsArray[secondIndex]) > 0) then
	print("Swapping " .. index .. " with " .. secondIndex)
	local temp = pointsArray[index]
	pointsArray[index] = pointsArray[secondIndex]
	pointsArray[secondIndex] = temp
      end
    end
  end

  return pointsArray
end

print("Sorted result: " .. toString(sort(points)))
