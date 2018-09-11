defmodule Maplechange.API.Server do
  
  @doc """
    iex> Maplechange.API.Server.get_ticker()
  """
  def get_ticker() do
    # We're using string interpolation here.
    # #{id} means it inserts the value of id
    url = "https://maplechange.com/api/v2/tickers/mutxbtc"
    response =
      HTTPoison.get!(url)
    Poison.decode!(response.body)
  end

  @doc """
    iex> Maplechange.API.Server.get_price()
  """
  def get_price() do
    # We're using string interpolation here.
    # #{id} means it inserts the value of id
    __MODULE__.get_ticker()
      |> Map.get("ticker")
      |> Map.get("high")
  end

end