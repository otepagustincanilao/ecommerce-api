defmodule Ecommerce.Seeders.Category do
  @moduledoc false
  import Ecto.Query
  alias Ecommerce.Repo
  alias Ecommerce.Schemas.{
  	Category
  }

  def seed(raw_data) when is_list(raw_data) do
  	raw_data 
  	|> Enum.map(fn(data) -> 
      insert_or_update(data)
  	end)
  end

  defp insert_or_update(data) do
    Category
    |> where([c], c.code == ^data.code)
    |> Repo.one()
    |> is_existing?(data)
  end

  defp is_existing?(nil, data) do
    %Category{}
    |> Category.changeset(data)
    |> Repo.insert!()
  end
  defp is_existing?(result, data) do
    result
    |> Category.changeset(data)
    |> Repo.update!()
  end

end

defmodule Ecommerce.Seeders.SecondaryCategory do
  @moduledoc false
  import Ecto.Query
  alias Ecommerce.Repo
  alias Ecommerce.Schemas.{
    SecondaryCategory
  }

  def seed(raw_data) when is_list(raw_data) do
    raw_data 
    |> Enum.map(fn(data) -> 
      insert_or_update(data)
    end)
  end

  defp insert_or_update(data) do
    SecondaryCategory
    |> where([sc], sc.category_code == ^data.category_code and sc.name == ^data.name)
    |> Repo.one()
    |> is_existing?(data)
  end

  defp is_existing?(nil, data) do
    %SecondaryCategory{}
    |> SecondaryCategory.changeset(data)
    |> Repo.insert!()
  end
  defp is_existing?(result, data) do
    result
    |> SecondaryCategory.changeset(data)
    |> Repo.update!()
  end

end

defmodule Ecommerce.Seeders.TertiaryCategory do
  @moduledoc false
  import Ecto.Query
  alias Ecommerce.Repo
  alias Ecommerce.Schemas.{
    TertiaryCategory
  }

  def seed(raw_data) when is_list(raw_data) do
    raw_data 
    |> Enum.map(fn(data) -> 
      insert_or_update(data)
    end)
  end

  defp insert_or_update(data) do
    TertiaryCategory
    |> where([tc], tc.name == ^data.name)
    |> Repo.one()
    |> is_existing?(data)
  end

  defp is_existing?(nil, data) do
    %TertiaryCategory{}
    |> TertiaryCategory.changeset(data)
    |> Repo.insert!()
  end
  defp is_existing?(result, data) do
    result
    |> TertiaryCategory.changeset(data)
    |> Repo.update!()
  end

end
