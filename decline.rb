array = [10, 9, 8, 7]

index = 0

differences = []

  while index < (array.length - 1)
    if array[index] < array[index + 1]
      differences << :up
    elsif array[index] > array[index - 1]
      differences << :down
    else

      differences << :even

    end
    index += 1
  end


  p differences

  count = 0
  while count < (differences.length - 1)
    if differences[count] == :down
      count += 1
    elsif differences[count] == :up
      count -= 1
    else differences[count] == :even
      count

    end
    



  end

  if count == 3
    puts "in decline"
  else
    puts "not in decline"
  end

  p differences

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
