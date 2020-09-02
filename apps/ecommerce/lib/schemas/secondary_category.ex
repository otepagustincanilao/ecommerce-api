defmodule Ecommerce.Schemas.SecondaryCategory do
	@moduledoc false
  use Ecto.Schema
  import Ecto.Changeset

  alias __MODULE__

  @primary_key {:id, :binary_id, autogenerate: true}
  schema "secondary_categories" do
    field :name, :string
    field :description, :string

    belongs_to(:category, Ecommerce.Schemas.Category, references: :code, type: :string, foreign_key: :category_code)

    timestamps()
  end

  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [
      :category_code,
      :name,
      :description
    ])
  end

end


