defmodule Devvy.Repo do
  use Ecto.Repo,
    otp_app: :devvy,
    adapter: Ecto.Adapters.Postgres
end
