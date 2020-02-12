# frozen_string_literal: true

class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.references :buyer, null: false, foreign_key: true
      t.references :seller, null: false, foreign_key: true

      t.timestamps
    end
  end
end
