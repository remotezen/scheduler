class Event < ApplicationRecord
  has_many :users
  scope :reversed, -> { order 'start_time ASC' }
  scope :top, -> { order 'start_time ASC' }
end
