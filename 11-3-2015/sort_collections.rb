class SortCollections
  def merge_and_sort(a1, a2, a3)
    a4 = merge_two_arrays(a1, a2)
    merge_two_arrays(a3, a4)
  end

  def merge_two_arrays(arr1, arr2)
    sorted = []

    until arr1.empty? || arr2.empty?
      if arr1[0] <= arr2[0]
        sorted << arr1.shift
      else
        sorted << arr2.shift
      end
    end

    sorted.push(arr1).push(arr2).flatten
  end
end
