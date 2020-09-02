defmodule Ecommerce.Schemas.Cart do
	@moduledoc false
  use Ecto.Schema
  import Ecto.Changeset

  alias __MODULE__

  @primary_key {:id, :binary_id, autogenerate: true}
  schema "carts" do
    field :qty, :integer
    field :variant, {:array, :map}
    field :remarks, :string

    belongs_to(:product, Ecommerce.Schemas.Product)
    belongs_to(:customer, Ecommerce.Schemas.Customer)

    timestamps()
  end

  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [
      :first_name,
      :middle_name,
      :last_name,
      :suffix,
      :birthdate,
      :gender
    ])
  end
end
