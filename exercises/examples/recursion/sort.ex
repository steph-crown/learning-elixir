defmodule Sort do
  # empty list
  def ascending([]), do: []

  #   1 item list
  def ascending([item]), do: [item]

  def ascending(list) do
    half = div(Enum.count(list), 2)
    {first_list, second_list} = Enum.split(list, half)
    merge(ascending(first_list), ascending(second_list))
  end

  #   Function that merges two sorted lists, making them sorted
  def merge([], second_list), do: second_list
  def merge(first_list, []), do: first_list

  def merge([h_1 | t_1], [h_2 | t_2]) when h_1 <= h_2 do
    [h_1 | merge(t_1, [h_2 | t_2])]
  end

  def merge([h_1 | t_1], [h_2 | t_2]) when h_2 <= h_1 do
    [h_2 | merge(t_2, [h_1 | t_1])]
  end
end
