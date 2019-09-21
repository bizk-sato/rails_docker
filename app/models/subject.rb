# frozen_string_literal: true

class Subject < ApplicationRecord
  has_many :details
  has_many :costs
end
