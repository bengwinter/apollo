class Playlist < ActiveRecord::Base
  belongs_to :user
  has_many :orders
  has_many :songs, through: :orders
  validates :name, presence: true
end