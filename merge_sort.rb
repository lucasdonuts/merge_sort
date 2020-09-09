def merge_sort(array)
  n = array.length
  return if n < 2
  left = array[0...n/2]
  right = array[n/2..-1]
  merge_sort(left)
  merge_sort(right)
  merge(left, right, array)
end

def merge(left, right, array)
  nl = left.length
  nr = right.length
  i = j = k = 0

  while i < nl && j < nr
    if left[i] <= right[j]
      array[k] = left[i]
      i += 1
    else
      array[k] = right[j]
      j += 1
    end
    k += 1
  end

  while i < nl
    array[k] = left[i]
    i += 1
    k += 1
  end

  while j < nr
    array[k] = right[j]
    j += 1
    k += 1
  end
  p array
  return array
end

array = [4, 8, 6, 2, 1, 7, 5, 3]
p merge_sort(array)