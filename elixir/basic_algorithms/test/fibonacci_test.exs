defmodule FibonacciTest do
  use ExUnit.Case
  doctest Fibonacci

  test "element(0) should be 0" do
    assert Fibonacci.position(0) === 0
  end
  test "element(1) should be 1" do
    assert Fibonacci.position(1) === 1
  end
  test "element(3) should be 1" do
    assert Fibonacci.position(2) === 1
  end
  test "sequence(3) should be [0,1,1,2]" do
    assert Fibonacci.sequence(3) === [0,1,1,2]
  end
end
