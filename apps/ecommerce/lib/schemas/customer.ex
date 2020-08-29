defmodule Ecommerce.Schemas.Customer do
	@moduledoc false
  use Ecto.Schema
  import Ecto.Changeset

  alias __MODULE__

  @primary_key {:id, :binary_id, autogenerate: true}
  schema "customers" do
    field :first_name, :string
    field :middle_name, :string
		field :last_name, :string
    field :suffix, :string
    field :birthdate, :date
    field :gender, :date
    field :civil_status, :string

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
      :gender,
      :civil_status
    ])
  end
end
