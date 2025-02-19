require_relative "concerns/slugifiable.rb"
class Artist < ActiveRecord::Base
    extend Slugifiable::ClassMethods
    include Slugifiable::InstanceMethods
    has_many :songs
    has_many :song_genres, through: :songs
    has_many :genres, through: :song_genres 
end