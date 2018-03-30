defmodule GenerateApiKey do
  @moduledoc """
  Documentation for GenerateApiKey.
  """

  @doc """
  generating api-key is module made to generate uniq api-key for perticular user.

  ## Examples

      iex> GenerateApiKey.generate_api_key(35, "nitesh@hod.com")
      "d71fa38c1fadf1fb341ec34d4d1d83d2"

  """
  def generate_api_key(id, email) do
    api_key = "#{id}#{email}#{:os.system_time(:milli_seconds)}"
    :crypto.hash(:md5, api_key) |> Base.encode16(case: :lower)
  end
end
