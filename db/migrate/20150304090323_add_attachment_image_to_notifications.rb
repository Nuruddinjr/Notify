class AddAttachmentImageToNotifications < ActiveRecord::Migration
  def self.up
    change_table :notifications do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :notifications, :image
  end
end
