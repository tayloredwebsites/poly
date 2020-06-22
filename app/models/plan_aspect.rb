class PlanAspect < ApplicationRecord
  has_many :rubrics, as: :rubricable
end
