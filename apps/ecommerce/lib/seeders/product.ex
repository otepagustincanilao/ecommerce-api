defmodule Ecommerce.Seeders.Product do
  @moduledoc false

  import Ecto.Query
  alias Ecommerce.Repo
  alias Ecommerce.Schemas.Product

  def seed(raw_data) when is_list(raw_data) do
  	 raw_data 
  	|> Enum.map(fn(data) -> 
      insert_or_update(data)
  	end)
  end

  defp insert_or_update(data) do
    Product
    |> where([c], c.code == ^data.code)
    |> Repo.one()
    |> is_existing?(data)
  end

  defp is_existing?(nil, data) do
    %Product{}
    |> Product.changeset(data)
    |> Repo.insert!()
  end
  defp is_existing?(result, data) do
    result
    |> Product.changeset(data)
    |> Repo.update!()
  end

end

