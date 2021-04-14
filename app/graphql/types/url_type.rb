module Types
    class UrlType < Types::BaseObject
        field :id, ID, null: false
        field :full_url, String, null: false
        field :short_url, String, null: false
    end
end