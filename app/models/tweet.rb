class Tweet < ApplicationRecord
    belongs_to :user
    validates :content, presence: true
    validates :user, presence: true, length: { maximum: 140 }
    acts_as_votable
end
