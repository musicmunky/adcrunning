class AddStravaIdToMembers < ActiveRecord::Migration[5.1]
  def change
    add_column :members, :strava_id, :integer
  end
end
