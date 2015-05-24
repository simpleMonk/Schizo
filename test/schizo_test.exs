defmodule SchizoTest do
  use ExUnit.Case

  test "upper" do
    assert Schizo.upper("hello") == "HELLO"
  end

  test "Alternate words are upper" do
    assert Schizo.alternate_upper("hello world senthil Kumar") == "hello WORLD senthil KUMAR"
  end

end
