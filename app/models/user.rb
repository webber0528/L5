class User < ApplicationRecord
    has_many :likes
    has_many :likes_tweets,
    through: :likes,source: :user 
    
end
