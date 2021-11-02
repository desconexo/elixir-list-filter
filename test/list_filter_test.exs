defmodule ListFilterTest do
  use ExUnit.Case

  describe "call/1" do
    test "count odd numbers" do
      list1 = ["1", "3", "6", "43", "banana", "6", "abc"]
      list2 = [1, 6, 8, 7, "20", "27", "fernando", "elixir", "49"]
      list3 = ["3", "3", "43", "rocketseat", "21", "31"]

      list1_expected_response = 3
      list2_expected_response = 4
      list3_expected_response = 5

      assert ListFilter.call(list1) == list1_expected_response
      assert ListFilter.call(list2) == list2_expected_response
      assert ListFilter.call(list3) == list3_expected_response
    end

    test "passing an empty list" do
      list = []

      expected_response = 0

      assert ListFilter.call(list) == expected_response
    end
  end
end
