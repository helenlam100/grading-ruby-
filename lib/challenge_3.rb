require 'json'

file = File.read("../data/grades.json")
grades = JSON.parse(file)

index = 0
differences = []
count = 0
ind = 0

grades.each do |array|
  while index < (array[1].length - 1)
    if array[1][index] < array[1][index + 1]
      differences << :up
    elsif array[1][index] > array[1][index + 1]
      differences << :down
    else
      differences << :even
    end
    index += 1
  end
  #
  # p differences


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
index = 0
differences = []
count = 0
ind = 0
end
