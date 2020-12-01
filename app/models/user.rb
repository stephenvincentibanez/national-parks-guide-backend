class User < ApplicationRecord
    has_many :reviews
    has_many :parks, through: :reviews
end
