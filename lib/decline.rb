array = [10, 10, 10, 9, 9, 8, 8, 8, 8, 7]

index = 0

differences = []

  while index < (array.length - 1)  #if index is less than 9
    if array[index] < array[index + 1]  #array[index + 1] means increase current index location by one. index 1 compare with index2, index2 compare with index3, etc.
      differences << :up               #push into empty array
    elsif array[index] > array[index + 1]
      differences << :down
    else

      differences << :even

    end
    index += 1   #increment index by one at the end of each if loop
  end
  #
  p differences

count = 0
ind = 0
while ind < (differences.length)
  if differences[ind] == :down
    count += 1
  elsif differences[ind] == :up
    count -= 1
  else differences[ind] == :even
    count
  end
  ind += 1
end

if count >= 3
  puts "in decline"
else
  puts "not in decline"
end



# ## Challenge 2 - Finding students in decline
#
# A student is considered in decline if they have 3 grades lower than previous grades, even if there are some steady
# grades in there.  For example:
#
# ```ruby
# [10, 10, 10, 9, 9, 8, 8, 8, 8, 7] # => [:even, :even, :down, :even, :down, :even, :even, :even, :down]
# [10, 10, 10, 9, 9, 8, 8, 8, 8, 7] # => in decline
#
# [10, 9, 8, 7] # => [:down, :down, :down]
# [10, 9, 8, 7] # => in decline
#
# [10, 9, 8, 7, 8] # => [:down, :down, :down, :up]
# [10, 9, 8, 7, 8] # => not in decline
#
# [10, 9, 8] # => [:down, :down]
# [10, 9, 8] # => not in decline
