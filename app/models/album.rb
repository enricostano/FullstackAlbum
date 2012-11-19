class Album < ActiveRecord::Base
  attr_accessible :cover_image, :name

  validates_presence_of :name

  image_accessor :cover_image

  def as_json(options = {})
      super(options.merge(:methods => [ :cover_image_path ]))
  end

  protected

  def cover_image_path
    self.cover_image ? self.cover_image.url : nil
  end
end
