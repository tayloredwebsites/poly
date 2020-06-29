class UserJoin < ActiveRecord::Base
  belongs_to :user_joinable, polymorphic: true
  belongs_to :user
end