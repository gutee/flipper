class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  has_many :flips

  attr_accessible :email, :nickname, :password

  validates_presence_of :email
  #validates_numericality_of :password, :only_integer => true, :allow_nil => true,
  #                          :greater_than_or_equal_to => 1,
  #                          :less_than_or_equal_to => 999,
  #                          :message => "can only be whole number between 1 and 999."


end
