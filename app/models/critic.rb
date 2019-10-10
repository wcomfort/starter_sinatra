class Critic < ActiveRecord::Base
    has_many :restaurants, through: :reviews
end