defmodule Ecommerce.Schemas.Shipper do
	use Ecto.Schema
  import Ecto.Changeset

  alias __MODULE__

  @primary_key {:id, :binary_id, autogenerate: true}
  schema "shippers" do
		field :name, :string
		field :description, :string
    field :remarks, :text

    timestamps()
  end

  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [
			:name,
			:description,
      :remarks
    ])
  end

end
