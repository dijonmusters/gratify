class AddUserToGrateful < ActiveRecord::Migration[6.0]
  def change
    add_reference :gratefuls, :user
  end
end
