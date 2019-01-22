defmodule Paper.Repo.Migrations.ContentModel do
  use Ecto.Migration

  def up do
    create table(:messages) do
      add :title, :string
      add :author, :string
      add :summary, :string, default: ""
      add :content, :string
      add :status, :string
      add :published_date, :naive_datetime
      timestamps()
    end
    create index(:messages, [:status])
  end

  def down do
    drop table(:messages)
  end
end
