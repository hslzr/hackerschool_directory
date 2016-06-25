class AddGithubToHacker < ActiveRecord::Migration
  def change
    add_column :hackers, :github, :string
  end
end
