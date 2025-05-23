defmodule WorkOS.SSO.ProfileAndToken do
  @moduledoc """
  WorkOS Profile and Token struct.
  """

  alias WorkOS.SSO.Profile

  @behaviour WorkOS.Castable

  @type t() :: %__MODULE__{
          access_token: String.t(),
          profile: Profile.t()
        }

  @enforce_keys [:access_token, :profile]
  defstruct [
    :access_token,
    :profile
  ]

  @impl true
  @spec cast(map :: map()) :: t()
  def cast(map) do
    %__MODULE__{
      access_token: map["access_token"],
      profile: Profile.cast(map["profile"])
    }
  end
end
