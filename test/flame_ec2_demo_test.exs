defmodule FlameEC2DemoTest do
  use ExUnit.Case
  doctest FlameEC2Demo

  test "code loaded" do
    assert Code.loaded?(FlameEC2Demo)
  end
end
