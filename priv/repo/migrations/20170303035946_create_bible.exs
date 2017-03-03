defmodule BibleJournal.Repo.Migrations.CreateBible do
  use Ecto.Migration

  def up do
    TestamentEnum.create_type
    VersionEnum.create_type
    BookEnum.create_type

    create table(:bibles) do
      add :chapter, :integer
      add :verse, :integer
      add :content, :text
    end
  end

  def down do
    drop table(:bibles)
    TestamentEnum.drop_type
    VersionEnum.drop_type
    BookEnum.drop_type
  end
end
