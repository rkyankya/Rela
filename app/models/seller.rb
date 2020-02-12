# frozen_string_literal: true

class Seller < ApplicationRecord
  has_many :buyers, through: :products
  has_many :products
end
