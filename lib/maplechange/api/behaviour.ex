defmodule Maplechange.Api.Behaviour do
  @moduledoc false

  @type error :: {:error, map() | binary() | atom()}

  # API methods

  @callback get_ticker_for_symbol(String.t) :: {:ok, binary()} | error
  
end