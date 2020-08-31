defmodule Ecommerce.Repo.Migrations.CreateSecondaryCategoriesTbl do
  use Ecto.Migration

	def up do
	  create table(:secondary_categories, primary_key: false) do
	    add :id, :binary_id, primary_key: true
	    add :category_code, references(:categories, column: :code, type: :string, on_delete: :delete_all)
	    add :name, :string, size: 60
	    add :description, :text

	    timestamps()
	  end

	end

	def down do
	  drop table(:secondary_categories)
	end
end
