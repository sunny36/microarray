class CreateExperiments < ActiveRecord::Migration
  def change
    create_table :experiments do |t|
      t.string :name
      t.string :folder
      t.string :comments
      t.timestamps
    end
  end
end
