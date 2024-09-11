defmodule Schema.Account.UserToken do
  @moduledoc """
  Schema for UserTokens
  """
  use Ecto.Schema
  alias Schema.Account.User

  schema "users_tokens" do
    field :token, :binary
    field :context, :string
    field :sent_to, :string
    belongs_to :user, User

    timestamps(type: :utc_datetime, updated_at: false)
  end
end
