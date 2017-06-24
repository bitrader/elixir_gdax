defmodule Gdax do
  @moduledoc """
  Documentation for Gdax.
  """

  use HTTPoison.Base

  @base_url "https://api.gdax.com/products/BTC-USD/ticker"

  @doc """
  A BTC/USD ticker

  ## Examples

      iex> Gdax.ticker

  """
  def ticker do
    with {:ok, result} <- get(@base_url),
         do: Poison.decode(result.body)
  end
end
