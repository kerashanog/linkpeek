class Link < ActiveRecord::Base
  
  validates :title, presence: true, length: {minimum: 5}
  validates :url,  presence: true, length: {minimum: 1}
  
  belongs_to :user
  acts_as_votable
  has_many :comments, dependent: :destroy
end
