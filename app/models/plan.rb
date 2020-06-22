class Plan < ApplicationRecord
  has_many :rubrics, as: :rubricable
end
