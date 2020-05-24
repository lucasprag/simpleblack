require "vimcolors"

defmodule ElixirExample do
  use Vim.Colors

  @moduledoc """
  Shows syntax highlithing for creating a screenshot
  """

  defmodule User do
    defstruct email: nil, role: "guest"
  end

  @doc false
  def examples(_args) do
    ["string", :atom, true, false, 99.9]
    |> Enum.each(fn(item) -> IO.puts("Look! We got a #{item}!") end)

    map = %{key:  <<1::3>>}
    if Map.has_key?(map, :key) do
      IO.inspect(%{map | key: "new value"})
    end

    Enum.min([~D[2020-03-31], ~D[2020-04-01]])
    Enum.min_by(["a", "aa", "aaa", "b", "bbb"], &String.length/1)

    [key: "value", key: "different value"]
  end

  def message(user = %User{email: ~r/example/}) do
    case user.role do
      "admin"  -> "Hey admin."
      "member" -> "Hello again member, please text the admin for help if you need."
      "guest"  -> "Welcome guest, feel free to sign up to be a member."
      _        -> "I don't know who you are, but be my guest."
    end
  end
end
