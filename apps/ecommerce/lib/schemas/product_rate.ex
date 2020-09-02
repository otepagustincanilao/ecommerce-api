defmodule Ecommerce.Schemas.ProductRate do
	use Ecto.Schema
  import Ecto.Changeset

  alias __MODULE__

  @primary_key {:id, :binary_id, autogenerate: true}
  schema "product_rates" do
		field :price, :decimal
		field :tax, :decimal
		field :discount, :decimal
    field :remarks, :string

		belongs_to(:product, Ecommerce.Schemas.Product)

    timestamps()
  end

  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [
			:product_id,
			:price,
			:tax,
      :discount,
      :remarks
    ])
  end

end
