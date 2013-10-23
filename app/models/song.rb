class Song < ActiveRecord::Base
  has_and_belongs_to_many :playlists
  belongs_to :genre
  validates :url, presence: true
end