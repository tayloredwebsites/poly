class Rubric < ApplicationRecord
  belongs_to :rubricable, polymorphic: true, optional: true
  has_many :rubric_aspects
end
