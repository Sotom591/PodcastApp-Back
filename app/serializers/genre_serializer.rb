class GenreSerializer < ActiveModel::Serializer
  attributes :id, :category_id, :name, :parent_id
end
