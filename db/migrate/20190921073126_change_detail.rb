# frozen_string_literal: true

class ChangeDetail < ActiveRecord::Migration[5.2]
  def change
    rename_column :details, :detail, :name
  end
end
