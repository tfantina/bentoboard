defmodule Core.Repo do
  use Ecto.Repo,
    otp_app: :bento_board,
    adapter: Ecto.Adapters.SQLite3
end
