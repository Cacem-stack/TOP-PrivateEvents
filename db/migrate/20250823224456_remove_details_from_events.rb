class RemoveDetailsFromEvents < ActiveRecord::Migration[8.0]
  def change
    remove_column :events, :author_id, :integer
    remove_column :events, :attendee_id, :integer
  end
end
