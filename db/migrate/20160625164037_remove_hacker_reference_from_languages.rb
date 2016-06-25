class RemoveHackerReferenceFromLanguages < ActiveRecord::Migration
  def change
		remove_column :languages, :hacker_id
  end
end
