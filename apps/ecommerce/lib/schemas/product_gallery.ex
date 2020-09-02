defmodule Ecommerce.Schemas.ProductGallery do
	use Ecto.Schema
  import Ecto.Changeset

  alias __MODULE__

  @primary_key {:id, :binary_id, autogenerate: true}
  schema "product_galleries" do
		field :url, :string

		belongs_to(:product, Ecommerce.Schemas.Product)

    timestamps()
  end

  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [
			:product_id,
			:url
    ])
  end

end
