class Flip < ActiveRecord::Base
  belongs_to :user

  attr_accessible :body, :user_id
end
