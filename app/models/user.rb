# frozen_string_literal: true

class User < ApplicationRecord
  has_many :costs, dependent: :nullify
end
