# Create a function that returns Tic-Tac-Toe game winners. You can represent the board with a tuple of nine elements, where each group of three
# items is a row. The return of the function should be a tuple. When we
# have a winner, the first element should be the atom :winner, and the second
# should be the player. When we have no winner, the tuple should contain
# one item that is the atom :no_winner. It should work like this:
# TicTacToe.winner({
# :x, :o, :x,
# :o, :x, :o,
# :o, :o, :x
# })
# # {:winner, :x}
# TicTacToe.winner({
# :x, :o, :x,
# :o, :x, :o,
# :o, :x, :o
# })
# # :no_winner

defmodule Tictactoe do
  def winner({
        :x,
        :x,
        :x,
        _,
        _,
        _,
        _,
        _,
        _
      }) do
    {:winner, :x}
  end

  def winner({
        _,
        _,
        _,
        :x,
        :x,
        :x,
        _,
        _,
        _
      }) do
    {:winner, :x}
  end

  def winner({
        _,
        _,
        _,
        _,
        _,
        _,
        :x,
        :x,
        :x
      }) do
    {:winner, :x}
  end

  def winner({
        :x,
        _,
        _,
        _,
        :x,
        _,
        _,
        _,
        :x
      }) do
    {:winner, :x}
  end

  def winner({
        _,
        _,
        :x,
        _,
        :x,
        _,
        :x,
        _,
        _
      }) do
    {:winner, :x}
  end

  def winner({
        :x,
        _,
        _,
        :x,
        _,
        _,
        :x,
        _,
        _
      }) do
    {:winner, :x}
  end

  def winner({
        _,
        :x,
        _,
        _,
        :x,
        _,
        _,
        :x,
        _
      }) do
    {:winner, :x}
  end

  def winner({
        _,
        _,
        :x,
        _,
        _,
        :x,
        _,
        _,
        :x
      }) do
    {:winner, :x}
  end

  def winner({
        :o,
        :o,
        :o,
        _,
        _,
        _,
        _,
        _,
        _
      }) do
    {:winner, :o}
  end

  def winner({
        _,
        _,
        _,
        :o,
        :o,
        :o,
        _,
        _,
        _
      }) do
    {:winner, :o}
  end

  def winner({
        _,
        _,
        _,
        _,
        _,
        _,
        :o,
        :o,
        :o
      }) do
    {:winner, :o}
  end

  def winner({
        :o,
        _,
        _,
        _,
        :o,
        _,
        _,
        _,
        :o
      }) do
    {:winner, :o}
  end

  def winner({
        _,
        _,
        :o,
        _,
        :o,
        _,
        :o,
        _,
        _
      }) do
    {:winner, :o}
  end

  def winner({
        :o,
        _,
        _,
        :o,
        _,
        _,
        :o,
        _,
        _
      }) do
    {:winner, :o}
  end

  def winner({
        _,
        :o,
        _,
        _,
        :o,
        _,
        _,
        :o,
        _
      }) do
    {:winner, :o}
  end

  def winner({
        _,
        _,
        :o,
        _,
        _,
        :o,
        _,
        _,
        :o
      }) do
    {:winner, :o}
  end
end
