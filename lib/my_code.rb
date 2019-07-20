# Your Code Here
def map(source_array)
neg = []
i = 0
while i < source_array.length do
  neg.push(yield source_array[i])
  i += 1
end
return neg
end

def reduce(source_array, starting_point = nil)
  if starting_point 
    total= starting_point
   i = 0
 else 
   total= source_array[0]
   i = 1
 end
   while i < source_array.length do
  total = yield(total, source_array[i])
  i += 1
end
   return total
end
