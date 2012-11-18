class Album < ActiveRecord::Base
  attr_accessible :cover_image, :name

  validates_presence_of :name

  image_accessor :cover_image
end
