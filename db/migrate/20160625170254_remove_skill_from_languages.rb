class RemoveSkillFromLanguages < ActiveRecord::Migration
  def change
		remove_column :languages, :skill
  end
end
