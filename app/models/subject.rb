# frozen_string_literal: true

class Subject < ApplicationRecord
  has_many :details, dependent: :nullify
  has_many :costs, dependent: :nullify
end
