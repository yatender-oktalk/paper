defmodule Paper.Repo.Migrations.ContentData do
  use Ecto.Migration

  def up do
    create table(:contents) do
      add :title, :string
      add :author, :string
      add :summary, :string, default: ""
      add :content, :string
      add :status, :string
      add :published_date, :naive_datetime
      timestamps()
    end
    create index(:contents, [:status])
  end

  def down do
    drop table(:contents)
  end
end
