# frozen_string_literal: true

class CreateBuyers < ActiveRecord::Migration[6.0]
  def change
    create_table :buyers do |t|
      t.string :name

      t.timestamps
    end
  end
end
