$print_space = '   '
$rand_count = 0

def quick_sort_rand(arr, depth = 0)
  $rand_count += 1

  return arr if arr.length <= 1

  pivot = arr.delete_at(rand(arr.length))

  left = arr.select { |n| n <= pivot }
  right = arr.select { |n| n > pivot }

  puts "#{$print_space * depth}Rand Pivot: #{pivot}"
  puts "#{$print_space * depth}Left: #{left.inspect}"
  puts "#{$print_space * depth}Right: #{right.inspect}"

  result = quick_sort_rand(left, depth + 1) + [pivot] + quick_sort_rand(right, depth + 1)

  puts "#{$print_space * depth}Merged: #{result.inspect}"

  return result
end

$median_count = 0

def quick_sort_median(arr, depth = 0)
  $median_count += 1

  return arr if arr.length <= 1

  median = [arr[0], arr[arr.length / 2], arr[-1]].sort[1]
  pivot = arr.delete_at(arr.index(median))

  left = arr.select { |n| n <= pivot }
  right = arr.select { |n| n > pivot }

  puts "#{$print_space * depth}Median Pivot: #{pivot}"
  puts "#{$print_space * depth}Left: #{left.inspect}"
  puts "#{$print_space * depth}Right: #{right.inspect}"

  result = quick_sort_median(left, depth + 1) + [pivot] + quick_sort_median(right, depth + 1)

  puts "#{$print_space * depth}Merged: #{result.inspect}"

  return result
end

puts "Random Pivot Quick Sort:"
p quick_sort_rand([7, 5, 8, 6, 1, 2, 4, 11, 9, 10, 3, 0])
puts "Random Pivot Count: #{$rand_count}"
puts "\nMedian Pivot Quick Sort:"
p quick_sort_median([7, 5, 8, 6, 1, 2, 4, 11, 9, 10, 3, 0])
puts "Median Pivot Count: #{$median_count}"


