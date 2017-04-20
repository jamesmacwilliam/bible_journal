defmodule BibleJournal.Repo.Migrations.CreateBible do
  use Ecto.Migration

  def up do
    create table(:bibles) do
      add :chapter, :integer
      add :verse, :integer
      add :testament, :string, size: 1
      add :book, :string, size: 2
      add :content, :text
    end

    create index(:bibles, [:book])
  end
end
