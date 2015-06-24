class Comment < ActiveRecord::Base
  
  validates :body, presence: true, length: {minimum: 5}
  
  belongs_to :user
  belongs_to :link
end
