class User < ActiveRecord::Base
  attr_accessible :email, :nickname, :password

  validates_presence_of :email
  validates_numericality_of :password, :only_integer => true, :allow_nil => true,
                            :greater_than_or_equal_to => 1,
                            :less_than_or_equal_to => 999,
                            :message => "can only be whole number between 1 and 999."


end
