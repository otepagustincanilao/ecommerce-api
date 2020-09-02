defmodule Ecommerce.Schemas.ShippingOrder do
	@moduledoc false
  use Ecto.Schema
  import Ecto.Changeset

  alias __MODULE__

  @primary_key {:id, :binary_id, autogenerate: true}
  schema "shipping_orders" do
    field :shipping_amount, :decimal
    field :shipping_tax_price, :decimal
    field :remarks, :string

    belongs_to(:shipper, Ecommerce.Schemas.Shipper)
    belongs_to(:order, Ecommerce.Schemas.Order)

    timestamps()
  end

  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [
      :shipper_id,
      :order_id,
      :shipping_amount,
      :shipping_tax_price,
      :remarks
    ])
  end
end
