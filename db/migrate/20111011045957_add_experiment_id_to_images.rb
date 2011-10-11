class AddExperimentIdToImages < ActiveRecord::Migration
  def change
    add_column :images, :experiment_id, :integer
    add_index :images, :experiment_id
  end
end