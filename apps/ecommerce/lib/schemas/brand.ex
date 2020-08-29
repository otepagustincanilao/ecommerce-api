defmodule Ecommerce.Schemas.Brand do
	use Ecto.Schema
  import Ecto.Changeset

  alias __MODULE__

  @primary_key {:id, :binary_id, autogenerate: true}
  schema "brands" do
		field :name, :string
		field :description, :string

    timestamps()
  end

  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [
			:name,
			:description
    ])
  end

end
