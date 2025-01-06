defmodule FlameEC2Demo do
  @moduledoc false

  def run_example_task do
    FLAME.call(FlameEC2Demo.Pool, fn ->
      Process.sleep(10_000)
      System.cmd("hostname", [])
    end)
  end
end
