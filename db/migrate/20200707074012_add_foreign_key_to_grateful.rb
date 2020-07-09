class AddForeignKeyToGrateful < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :gratefuls, :users
  end
end
