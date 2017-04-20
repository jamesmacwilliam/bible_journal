defmodule BibleJournal.BibleFormatterTest do
  use BibleJournal.ModelCase

  alias BibleJournal.BibleFormatter

  @raw_attrs %{chapter: 42, testament: "old", book: "Leviticus", verse: 42}
  @converted_attrs %{chapter: 42, testament: 0, book: 2, verse: 42}

  test "converts text to enum" do
    converted = @raw_attrs
    |> BibleFormatter.enum(:book)
    |> BibleFormatter.enum(:testament)
    assert converted == @converted_attrs
  end
end
