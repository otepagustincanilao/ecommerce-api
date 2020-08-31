defmodule Ecommerce.Repo.Migrations.CreateProductRatesTbl do
  use Ecto.Migration

	def up do
		create table(:product_rates, primary_key: false) do
			add :id, :binary_id, primary_key: true
			add :product_id, references(:products, column: :id, type: :binary_id, on_delete: :delete_all)
			add :price, :decimal
			add :tax, :decimal
			add :discount, :decimal
			add :remarks, :string, size: 100

			timestamps()
		end
	end

	def down do
		drop table(:product_rates)
	end
end
