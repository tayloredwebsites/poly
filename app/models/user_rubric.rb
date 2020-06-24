class UserRubric < ApplicationRecord
	belongs_to :user
  belongs_to :rubric
  belongs_to :user_rubricable, polymorphic: true, optional: true
end
