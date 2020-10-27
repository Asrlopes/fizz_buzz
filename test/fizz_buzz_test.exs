defmodule FizzBuzzTest do
  use ExUnit.Case

  describe "build/1" do
    test "when a valid file is provided, returns the converted list" do
      expect_response = {:ok, [1, 2, :fizz, 4, :buzz, :buzz, :fizzbuzz, :buzz]}

      assert FizzBuzz.build("numbers.txt") == expect_response
    end

    test "when an invalid file is provided, returns an error" do
      expect_response = {:error, "Error while reading the file: enoent"}

      assert FizzBuzz.build("invalid.txt") == expect_response
    end
  end
end
