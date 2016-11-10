class Oitem < ApplicationRecord
    belongs_to :user
    
    validates :content, presence: true
    
    validates :user, presence: true
     
    acts_as_votable
end
