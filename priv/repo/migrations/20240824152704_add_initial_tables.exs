defmodule Core.Repo.Migrations.AddInitialTables do
  use Ecto.Migration

  def up do
    create table(:boards) do
      add :name, :string, null: false
      add :style, :string
      add :display, :string
      add :user_id, references(:users, on_delete: :delete_all), null: false
      add :context, :string, null: false
      add :sent_to, :string
      timestamps()
    end

    create table(:cards) do
      add :image_uri, :string
      add :title, :string, null: false
      add :url, :string
      add :notes, :string
      add :board_id, references(:boards, on_delete: :delete_all), null: false
      add :user_id, references(:users, on_delete: :delete_all), null: false
      timestamps()
    end
  end

  def down do
    drop table(:cards)
    drop table(:boards)
  end
end
