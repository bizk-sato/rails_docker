# frozen_string_literal: true

class Reset < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :description
    remove_column :costs, :content
  end
end
