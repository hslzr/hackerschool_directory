class CreateJoinTable < ActiveRecord::Migration
  def change
    create_join_table :hackers, :languages do |t|
      t.index [:hacker_id, :language_id]
      t.index [:language_id, :hacker_id]
    end
  end
end
