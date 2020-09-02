defmodule Ecommerce.Schemas.OrderPayment do
 @moduledoc false
  use Ecto.Schema
  import Ecto.Changeset

  alias __MODULE__

  @primary_key {:id, :binary_id, autogenerate: true}
  schema "order_payments" do
		field :quantity, :integer
		field :unit_price, :decimal
		field :tax_price, :decimal
		field :discount, :decimal
		field :discount_type, :string
		field :discount_remarks, :string
		field :variant, {:array, :map}
		field :remarks, :string

		belongs_to(:order, Ecommerce.Schemas.Order)
		belongs_to(:product, Ecommerce.Schemas.Product)

    timestamps()
  end

  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [
    	:order_id,
    	:product_id,
			:quantity, 
			:unit_price, 
			:tax_price, 
			:discount, 
			:discount_type,
			:discount_remarks,
			:variant,
			:remarks
    ])
  end
end
