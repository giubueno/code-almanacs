defmodule Fibonacci do
  @moduledoc """
  Basic Fibonacci implementation.
  """

  @doc """
  Returns the Fibonacci element of the position n.

  ## Examples

      iex> Fibonacci.position(0)
      0

  """
  def position(0), do: 0
  def position(1), do: 1
  def position(n), do: position(n-1) + position(n-2)

  @doc """
  Returns the 0..n elements of the Fibonacci sequence.

  ## Examples

      iex> Fibonacci.sequence 3
      [0,1,1,2]

  """
  def sequence(n), do: Enum.map(0..n, fn x -> position(x) end)
end
