class Guess < ActiveRecord::Base
  belongs_to :round
  has_many :cards
end
