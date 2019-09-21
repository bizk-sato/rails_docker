# frozen_string_literal: true

class CreateDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :details do |t|
      t.integer :subject_id
      t.string :detail

      t.timestamps
    end
  end
end
