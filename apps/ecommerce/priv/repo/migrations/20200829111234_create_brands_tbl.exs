defmodule Ecommerce.Repo.Migrations.CreateBrandsTbl do
  use Ecto.Migration

	def up do
		create table(:brands, primary_key: false) do
			add :id, :binary_id, primary_key: true
			add :name, :string, size: 60
			add :description, :text

			timestamps()
		end
	end

	def down do
		drop table(:brands)
	end
end
