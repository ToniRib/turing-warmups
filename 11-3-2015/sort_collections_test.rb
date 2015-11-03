require 'minitest/autorun'
require 'minitest/pride'
require_relative 'sort_collections'

class SortCollectionsTest < Minitest::Test
  def test_can_combine_three_arrays_of_one_element_in_sorted_order
    sorter = SortCollections.new

    assert_equal [1, 2, 3], sorter.merge_and_sort([3], [1], [2])
  end

  def test_can_three_arrays_into_large_sorted_array
    sorter = SortCollections.new

    a1 = [2, 5, 7, 9]
    a2 = [1, 3, 6]
    a3 = [4, 8, 9, 10]

    expected = [1, 2, 3, 4, 5, 6, 7, 8, 9, 9, 10]

    assert_equal expected, sorter.merge_and_sort(a1, a2, a3)
  end
end
