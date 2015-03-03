class AddProfessorIdToNotifications < ActiveRecord::Migration
  def change
    add_column :notifications, :professor_id, :integer
    add_index :notifications, :professor_id
  end
end
