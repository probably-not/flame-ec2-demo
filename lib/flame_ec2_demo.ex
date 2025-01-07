defmodule FlameEC2Demo do
  @moduledoc false

  def run_example_task do
    FLAME.call(FlameEC2Demo.Pool, fn ->
      System.cmd("hostname", [])
    end)
  end
end
