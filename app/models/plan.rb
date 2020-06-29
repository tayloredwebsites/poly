class Plan < ApplicationRecord
  has_many :rubrics, as: :rubricable
  has_many :user_rubrics, as: :user_rubricable
  has_many :user_joins, as: :user_joinable
  has_many :users, through: :user_joins
end
