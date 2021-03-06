defmodule Hexpm.Repository.Repository do
  use Hexpm.Web, :schema
  @derive {Phoenix.Param, key: :name}

  schema "repositories" do
    field :name, :string
    field :public, :boolean
    timestamps()

    has_many :packages, Package
    has_many :repository_user, RepositoryUser
    has_many :users, through: [:repository_user, :user]
  end
end
