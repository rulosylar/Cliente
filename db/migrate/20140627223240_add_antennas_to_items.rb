class AddAntennasToItems < ActiveRecord::Migration
  def change
    add_column :items, :antenna, :integer
  end
end
