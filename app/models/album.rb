class Album < ActiveRecord::Base
  attr_accessible :cover_image_uid, :name

  image_accessor :cover_image
end
