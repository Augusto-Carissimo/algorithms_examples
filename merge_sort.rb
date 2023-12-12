def merge_sort(array)

  def divide(array)
    mid = array.length / 2
    left = array[...mid]
    right = array[(mid)..]
    return left, right
  end

  def conquer(left, right)
    l = []
    i = 0
    j = 0

    while i < left.length && j < right.length
      if left[i] < right[j]
        l << left[i]
        i += 1
      else
        l << right[j]
        j += 1
      end
    end

    while i < left.length
      l << left[i]
      i += 1
    end

    while j < right.length
      l << right[j]
      j += 1
    end
    return l
  end

  if array.length <= 1
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

p verify_sorted(merge_sort([9,3,4,5,1,8,7,11,44,0,-1, 10]))