defmodule NftApp.Repo do
  use Ecto.Repo,
    otp_app: :nft_app,
    adapter: Ecto.Adapters.Postgres
end
