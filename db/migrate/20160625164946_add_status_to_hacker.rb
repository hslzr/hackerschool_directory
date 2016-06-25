class AddStatusToHacker < ActiveRecord::Migration
  def change
    add_column :hackers, :status, :string, default: "active"
  end
end
