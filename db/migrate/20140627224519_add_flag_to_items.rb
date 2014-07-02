class AddFlagToItems < ActiveRecord::Migration
  def change
    add_column :items, :flag, :string
  end
end
