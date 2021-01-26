def merge_sort(arr)
  return arr if arr.length == 1
  merge(merge_sort(arr.slice(0, arr.length/2)), 
        merge_sort(arr.slice(arr.length/2, arr[-1])))
end

def merge(arr1, arr2)
  sorted = []
  begin
    less_than = arr1[0] <=> arr2[0]
    less_than = (arr1[0] == nil ? 1 : -1) if less_than == nil
    case less_than
    when -1  
      sorted << arr1[0]
      arr1 = arr1.drop(1)
    when 0
      sorted << arr1[0]
      sorted << arr2[0]
      arr1 = arr1.drop(1)
      arr2 = arr2.drop(1)
    when 1
      sorted << arr2[0]
      arr2 = arr2.drop(1)
    end
  end until (arr1.length == 0 && arr2.length == 0)
  sorted
end

p merge_sort([38,27,43,3,9,82,10])
