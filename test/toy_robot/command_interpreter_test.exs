defmodule ToyRobot.CommandInterpreterTest do
  alias ToyRobot.CommandInterpreter
  use ExUnit.Case, async: true
  doctest ToyRobot.CommandInterpreter

  test "marks invalid command as invalid" do
    commands = ["SPIN", "TWIRL", "EXTERMINATE"]
    output = commands |> CommandInterpreter.interpret()

    assert output == [
             {:invalid, "SPIN"},
             {:invalid, "TWIRL"},
             {:invalid, "EXTERMINATE"}
           ]
  end
end
