defmodule Bob do
  def hey(input) do
    cond do
      input |> String.codepoints |> List.last == '?' -> "Sure."
      input =~ ~r/^[^\p{Ll}]*$/ -> "Whoa, chill out!"
      input |> String.lstrip == "" -> "Fine, be that way"
      true -> "Whatever."
    end
  end
end
