class AddUserAndDate < ActiveRecord::Migration[5.2]
  def change
    remove_column :costs, :user_id
    add_column :costs, :user_name, :string
    add_column :costs, :day, :date
  end
end
