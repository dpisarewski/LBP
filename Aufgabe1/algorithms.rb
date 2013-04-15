def sort1(list)
  (list.size - 1).downto(0) do |right|
    0.upto(right-1) do |i|
      list[i], list[i+1] = list[i+1], list[i] if list[i] > list[i+1]
    end
  end
  list
end

def sort2(list)
  if list.size > 1
    pivot = list.size/2
    left  = list[0...pivot]
    right = list[pivot...list.size]

    left  = sort2(left)
    right = sort2(right)
    merge(left, right)
  else
    list
  end
end

def merge(list1, list2)
  merged_list = []
  i, j = 0, 0

  while i < list1.size and j < list2.size do
    if list1[i] < list2[j]
      merged_list << list1[i]
      i += 1
    else
      merged_list << list2[j]
      j += 1
    end
  end

  merged_list += list1[i...list1.size]
  merged_list += list2[j...list2.size]

  merged_list
end

def subset_sum(set, s)
  return true   if s == 0
  return false  if set.empty?

  subset = set[1...set.size]
  subset_sum(subset, s - set.first) or subset_sum(subset, s)
end