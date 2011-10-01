class AddWidthAndHeightToImages < ActiveRecord::Migration
  def up
    add_column :images, :width, :integer
    add_column :images, :height, :integer
  end

  def down
    remove_column :images, :width
    remove_column :images, :height
  end
end
