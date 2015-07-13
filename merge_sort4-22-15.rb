# Translating mergeSort from JS into Ruby

def merge(left,right)
  merged = []
  l = 0
  r = 0

  while l<left.length and r<right.length
    if left[l] < right[r]
      merged.push(left[l]) #could also use: merged << left[l]
      l += 1
    else
      merged.push(right[r])
      r += 1
    end
  end

  merged + left.slice(l, left.length) + right.slice(r, right.length);
end

# Here's the actual mergeSort function that breaks 1 array down into smaller arrays. 
# Once an array has only 1 element, it is passed to merge() so everything can be built back up again.

def merge_sort(array)
  if array.length < 2
    #Arrays that have 0 or 1 items don't need to be sorted
    return array
  end

  middle = array.length / 2
  left = array.slice(0,middle)
  right = array.slice(middle,array.length)

  merge(merge_sort(left), merge_sort(right))
end