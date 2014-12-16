array = [6,3,5,4,3,4,4,5]

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

# 
# Class notes:
#
# def difference(array)
#   grade_differences = []
#
#   while grade_differences.length < (array.length - 1)
#     #walk through the array
#     #for each spot in the array
#     #compare somethign to something else
#     #push :up, :down or :even to the array that we will return
#
#   end
#
# end
