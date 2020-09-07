defmodule Ecommerce.Schemas.TertiaryCategory do
	@moduledoc false
  use Ecto.Schema
  import Ecto.Changeset

  alias __MODULE__

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "tertiary_categories" do
    field :name, :string
    field :description, :string

    belongs_to(:secondary_category, Ecommerce.Schemas.SecondaryCategory)

    timestamps()
  end

  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [
      :secondary_category_id,
      :name,
      :description
    ])
  end

end


