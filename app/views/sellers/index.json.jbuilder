# frozen_string_literal: true

json.array! @sellers, partial: 'sellers/seller', as: :seller
