defmodule Ecommerce.Repo.Migrations.CreateCartsTbl do
  use Ecto.Migration

	def up do
		create table(:carts, primary_key: false) do
			add :id, :binary_id, primary_key: true
			add :product_id, references(:products, column: :id, type: :binary_id, on_delete: :delete_all)	
			add :customer_id, references(:customers, column: :id, type: :binary_id, on_delete: :delete_all)	
			add :qty, :integer
			add :variant, :jsonb
			add :remarks, :text

			timestamps()
		end
	end

	def down do
		drop table(:carts)
	end
end
