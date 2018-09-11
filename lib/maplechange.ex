defmodule Maplechange do
  @moduledoc """
  Documentation for Maplechange.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Maplechange.hello()
      :world

      https://maplechange.com/api/v2/tickers/mutxbtc.json
  """
  def hello do
    :world
  end

 
  @doc """
  Return the ticker data for pair.
  ## Params
    None
  ## Example:
    iex> Maplechange.get_ticker()
   %{
      "at" => 1536703767,
      "ticker" => %{
        "buy" => "0.00000005",
        "change" => "0.000000000000000166666666666666694444444444444",
        "high" => "0.00000009",
        "last" => "0.00000006",
        "low" => "0.00000005",
        "name" => "BTC/MUTX",
        "sell" => "0.00000006",
        "vol" => "979123.13084673",
        "volbtc" => "0.0651652371395423"
      }
    }
  """
  defdelegate get_ticker(), to: Maplechange.API.Server

  @doc """
  Return the price data for pair.
  ## Params
    None
  ## Example:
    iex> Maplechange.get_price()
    "0.00000009"
  """
  defdelegate get_price(), to: Maplechange.API.Server

end
