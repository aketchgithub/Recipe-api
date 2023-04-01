class ReviewSerializer < ActiveModel::Serializer

  belongs_to :user
    belongs_to :recipe

  attributes :id, :user_id, :recipe_id, :rating
end
