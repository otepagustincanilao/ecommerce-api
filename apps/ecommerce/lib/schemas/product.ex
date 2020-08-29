defmodule Ecommerce.Schemas.Product do
	use Ecto.Schema
  import Ecto.Changeset

  alias __MODULE__

  @primary_key {:id, :binary_id, autogenerate: true}
  schema "products" do
		field :model, :string
		field :name, :string
		field :description, :string

		belongs_to(:category, Ecommerce.Schemas.Category, [foreign_key: :category_code, references: :code, type: :string])
		belongs_to(:brand, Ecommerce.Schemas.Brand)

    timestamps()
  end

  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [
			:model,
			:name,
			:desc
    ])
  end

end
