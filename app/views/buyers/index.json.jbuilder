# frozen_string_literal: true

json.array! @buyers, partial: 'buyers/buyer', as: :buyer
