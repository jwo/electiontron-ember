class EntrySerializer < ActiveModel::Serializer
  attributes :id, :category, :chef, :name, :large_url, :thumb_url
end
