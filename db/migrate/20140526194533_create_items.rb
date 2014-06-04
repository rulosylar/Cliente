class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :rfid
      t.text :description
      t.string :name

      t.timestamps
    end
  end
end
