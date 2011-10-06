class CreateTestspots < ActiveRecord::Migration
  def change
    create_table :testspots do |t|
      t.float :rect_x
      t.float :rect_y
      t.float :rect_width
      t.float :rect_height
      t.boolean :circle_detected
      t.float :circle_x
      t.float :circle_y
      t.float :circle_radius
      t.float :mean
      t.float :std_dev
      t.float :max
      t.float :min
      t.float :median
      t.integer :image_id
      t.timestamps
    end
  end
end
