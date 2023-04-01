class RecipeSerializer < ActiveModel::Serializer

  belongs_to :user
    belongs_to :category
    has_many :reviews

  attributes :id, :title, :instructions, :ingredients, :prep_time
end
