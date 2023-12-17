require './linked_list'

def linked_list_merge_sort(linked_list)

  def divide(linked_list)

    if linked_list.nil? || linked_list.head.nil?
      left_half = linked_list
      right_half = nil
      return left_half, right_half
    else
      mid = linked_list.size / 2
      mid_node = linked_list.search_index(mid-1)

      left_half = linked_list
      right_half = LinkedList.new
      right_half.head = mid_node.next_node
      mid_node.next_node = nil
      return left_half, right_half
    end
  end

  def conquer(left, right)

  end

  if linked_list.size == 1 ||linked_list.head.nil?
    return linked_list
  end

  left_half, right_half = divide(linked_list)
  # left = linked_list_merge_sort(left_half)
  # right = linked_list_merge_sort(right_half)

  # return conquer(left, right)
end
l = LinkedList.new
l.add(50)
l.add(40)
l.add(30)
l.add(20)
p l.__repr__

p linked_list_merge_sort(l)