class Testspot < ActiveRecord::Base
  belongs_to :image

  def self.find_by_image_filename_and_rect_x_and_rect_y(image_filename, rect_x, rect_y)
    self.joins(:images).where('images.filename = ?', image_filename).where('testspots.rect_x = ?', rect_x).where('testspots.rect_y = ?', rect_y).first
  end
end
