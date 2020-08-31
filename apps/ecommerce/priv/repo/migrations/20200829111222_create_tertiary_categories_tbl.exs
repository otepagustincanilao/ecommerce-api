defmodule Ecommerce.Repo.Migrations.CreateTertiaryCategoriesTbl do
  use Ecto.Migration

	def up do
	  create table(:tertiary_categories, primary_key: false) do
	    add :id, :binary_id, primary_key: true
	    add :secondary_category_id, references(:secondary_categories, column: :id, type: :binary_id, on_delete: :delete_all)
	    add :name, :string, size: 60
	    add :description, :text

	    timestamps()
	  end

	end

	def down do
	  drop table(:tertiary_categories)
	end
end
