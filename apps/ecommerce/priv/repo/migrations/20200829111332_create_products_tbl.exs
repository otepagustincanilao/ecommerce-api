defmodule Ecommerce.Repo.Migrations.CreateProductsTbl do
  use Ecto.Migration

	def up do
		create table(:products, primary_key: false) do
			add :id, :binary_id, primary_key: true
			add :category_code, references(:categories, column: :code, type: :string, on_delete: :delete_all)
			add :brand_id, references(:brands, column: :id, type: :binary_id, on_delete: :delete_all)
			add :model, :string, size: 30
			add :name, :string, size: 100
			add :description, :text

			timestamps()
		end
	end

	def down do
		drop table(:products)
	end
end
