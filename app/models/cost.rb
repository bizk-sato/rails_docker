# frozen_string_literal: true

class Cost < ApplicationRecord
  belongs_to :user
  belongs_to :subject
  belongs_to :detail
  validates :price, presence: true,
                    numericality: {
                      only_integer: true,
                      greater_than: 0,
                      allow_blank: true
                    }
end
