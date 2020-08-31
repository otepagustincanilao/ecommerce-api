defmodule Ecommerce.Repo.Migrations.CreateShippersTbl do
  use Ecto.Migration

	def up do
		create table(:shippers, primary_key: false) do
			add :id, :binary_id, primary_key: true
			add :name, :string, size: 60
			add :description, :text
			add :remarks, :text

			timestamps()
		end
	end

	def down do
		drop table(:shippers)
	end
end
