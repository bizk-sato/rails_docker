# frozen_string_literal: true

class ChangeColumn < ActiveRecord::Migration[5.2]
  def change
    remove_column :subjects, :subject
    add_column :subjects, :name, :string
  end
end
