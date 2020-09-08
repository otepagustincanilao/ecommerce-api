defmodule Ecommerce.Seeders.Brand do
  @moduledoc false

  import Ecto.Query
  alias Ecommerce.Repo
  alias Ecommerce.Schemas.Brand

  def seed(raw_data) when is_list(raw_data) do
  	 raw_data 
  	|> Enum.map(fn(data) -> 
      insert_or_update(data)
  	end)
  end

  defp insert_or_update(data) do
    Brand
    |> where([c], c.code == ^data.code)
    |> Repo.one()
    |> is_existing?(data)
  end

  defp is_existing?(nil, data) do
    %Brand{}
    |> Brand.changeset(data)
    |> Repo.insert!()
  end
  defp is_existing?(result, data) do
    result
    |> Brand.changeset(data)
    |> Repo.update!()
  end

end
