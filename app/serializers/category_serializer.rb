class CategorySerializer < ActiveModel::Serializer
  has_many :recipes

  
  attributes :id, :description, :name
end
