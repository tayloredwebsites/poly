class User < ApplicationRecord
	has_many :user_rubrics
  has_many :user_joins
  belongs_to :user_joinable, polymorphic: true

  has_many :plans, through: :user_joins, source: :user_joinable, source_type: 'Plan'
  has_many :plan_aspects, through: :user_joins, source: :user_joinable, source_type: 'PlanAspect'
end
