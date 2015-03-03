class CreateNotifications < ActiveRecord::Migration
  def change
    create_table :notifications do |t|
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
