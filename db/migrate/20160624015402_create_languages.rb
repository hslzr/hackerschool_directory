class CreateLanguages < ActiveRecord::Migration
  def change
    create_table :languages do |t|
      t.string :name
      t.string :skill
      t.references :hacker, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
