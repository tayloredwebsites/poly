class Plan < ApplicationRecord
  has_many :rubrics, as: :rubricable
  has_many :user_rubrics, as: :user_rubricable
end
