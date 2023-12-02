def recursive_binary_search(list, target)
  if list.length == 0
    return false
  else
    midpoint = list.length / 2

    if list[midpoint] == target
      return true
    else
      if list[midpoint] < target
        p 'greater'
        recursive_binary_search(list[(midpoint + 1)..], target)
      else
        p 'lesser'
        recursive_binary_search(list[...midpoint], target)
      end
    end
  end
end

list = [1,2,3,4,5,6,7,8]

p recursive_binary_search(list, 6)
p recursive_binary_search(list, 9)