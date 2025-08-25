class AddDetailsToEvents < ActiveRecord::Migration[8.0]
  def change
    add_column :events, :author_id, :integer
    add_column :events, :attendee_id, :integer
  end
end
