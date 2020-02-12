# frozen_string_literal: true

class Product < ApplicationRecord
  belongs_to :buyer
  belongs_to :seller
end
