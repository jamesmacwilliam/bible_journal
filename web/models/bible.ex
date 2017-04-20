defmodule BibleJournal.Bible do
  use BibleJournal.Web, :model

  schema "bibles" do
    field :chapter, :integer
    field :verse, :integer
    field :testament, :integer
    field :book, :integer
    field :content, :string
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:chapter, :verse, :content, :testament, :book])
    |> validate_required([:chapter, :verse, :content])
  end
end
