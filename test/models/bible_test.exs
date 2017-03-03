defmodule BibleJournal.BibleTest do
  use BibleJournal.ModelCase

  alias BibleJournal.Bible

  @valid_attrs %{chapter: 42, content: "some content", verse: 42}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Bible.changeset(%Bible{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Bible.changeset(%Bible{}, @invalid_attrs)
    refute changeset.valid?
  end
end
