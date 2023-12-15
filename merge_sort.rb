def merge_sort(array)

  def divide(array)
    mid = array.length / 2
    left = array[...mid]
    right = array[(mid)..]
    p "Dividing #{array} into #{left} and #{right}"
    return left, right
  end

  def conquer(left, right)
    p "Comparing left side #{left} with right side #{right}"
    l = []
    i = 0
    j = 0

    while i < left.length && j < right.length
      p "Comparing left #{left[i]} with right #{right[j]}"
      if left[i] < right[j]
        l << left[i]
        p "Left #{left[i]} is smaller. New order: #{l}"

        i += 1
      else
        l << right[j]
        p "Right #{right[j]} is smaller. New order: #{l}"
        j += 1
      end
    end

    while i < left.length
      l << left[i]
      p "Nothing else to compare in the right: new order: #{l}"
      i += 1
    end

    while j < right.length
      l << right[j]
      p "Nothing else to compare in the left: new order: #{l}"
      j += 1
    end
    return l
  end

  if array.length <= 1
    p "Naive sort: return #{array}"
    return array
  end

  left_half, right_half = divide(array)

  left = merge_sort(left_half)
  right = merge_sort(right_half)

  conquer(left, right)
end

def verify_sorted(array)
  n = array.length
  if n == 0 || n == 1
    return true
  end
  return array[0] < array[1] && verify_sorted(array[1..])
end
