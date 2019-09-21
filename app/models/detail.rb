# frozen_string_literal: true

class Detail < ApplicationRecord
  belongs_to :subject
  has_many :costs
end
