defmodule Ecommerce.Schemas.Order do
 @moduledoc false
  use Ecto.Schema
  import Ecto.Changeset

  alias __MODULE__

  @primary_key {:id, :binary_id, autogenerate: true}
  schema "orders" do
		field :total_price, :decimal
		field :total_discounted_amount, :decimal
		field :total_tax_price, :decimal
		field :total_shipping_price, :decimal
		field :total_shipping_tax_price, :decimal
		field :remarks, :string

    timestamps()
  end

  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [
			:total_price,
			:total_discounted_amount,
			:total_tax_price,
			:total_shipping_price,
			:total_shipping_tax_price,
			:remarks
    ])
  end
end
