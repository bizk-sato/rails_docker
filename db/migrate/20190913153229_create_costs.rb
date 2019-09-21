# frozen_string_literal: true

class CreateCosts < ActiveRecord::Migration[5.2]
  def change
    create_table :costs do |t|
      t.string :content
      t.integer :price

      t.timestamps
    end
  end
end
