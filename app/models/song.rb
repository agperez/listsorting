class Song < ActiveRecord::Base
  has_many :setlist_songs
  has_many :setlists, :through => :setlist_songs

  acts_as_list
end
