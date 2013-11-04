class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  has_many :flips

  has_many :followers, :foreign_key => "user_id", :dependent => :destroy
  has_many :occurances_as_follower, :class_name => "Friendship", :foreign_key => "follower_id", :dependent => :destroy

  attr_accessible :email, :nickname, :password

  validates_uniqueness_of :nickname
  validates_presence_of :email
  validates_format_of :email, :with =>
      /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create

  #validates_numericality_of :password, :only_integer => true, :allow_nil => true,
  #                          :greater_than_or_equal_to => 1,
  #                          :less_than_or_equal_to => 999,
  #                          :message => "can only be whole number between 1 and 999."


end
