defmodule AddRecursion do
  # Get cumulative sum from 0 up to the particular argument
  def add(num, sum \\ 0)

  def add(num, sum) when num == 0 do
    sum
  end

  def add(num, sum) do
    add(num - 1, sum + num)
  end

  # add all numbers in the list
  def sum_list([]) do
    0
  end

  def sum_list([head | tail]) do
    head + sum_list(tail)
  end
end
