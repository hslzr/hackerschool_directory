class AddDescriptionToGeneration < ActiveRecord::Migration
  def change
    add_column :generations, :description, :text
  end
end
