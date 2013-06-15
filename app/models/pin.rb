class Pin < ActiveRecord::Base
  attr_accessible :description

  validates :description, presence: true

  belongs_to :user 
  # Make sure that that a user is signed in
  # whenever the pin class is called
  validates :user_id, presence: true
end
