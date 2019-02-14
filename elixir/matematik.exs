defmodule Matematik do
  def fib(0), do: 0
  def fib(1), do: 1
  def fib(n), do: fib(n-1) + fib(n-2)
  def fibonacci(n), do: Enum.map(0..n, fn x -> fib(x) end)
end
