# frozen_string_literal: true

class AddPasswordToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :password, :string
    add_column :costs, :user_id, :integer
  end
end
