class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :rfid
      t.string :picture
      t.string :name

      t.timestamps
    end
  end
end
