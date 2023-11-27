def binary_search(list, target)
  first = 0
  last = list.length - 1

  while first <= last
    midpoint = (first + last)/2

    if list[midpoint] == target
      return midpoint
    elsif list[midpoint] < target
      first = midpoint + 1
    else
      last = midpoint - 1
    end
  end

  return nil
end

p binary_search([1,2,3,4,5,6], 7)