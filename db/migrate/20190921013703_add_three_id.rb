# frozen_string_literal: true

class AddThreeId < ActiveRecord::Migration[5.2]
  def change
    remove_column :costs, :user_name, :content
    add_column :costs, :user_id, :integer
    add_column :costs, :subject_id, :integer
    add_column :costs, :detail_id, :integer
  end
end
