# frozen_string_literal: true

class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  CATEGORY = %w[chinese italian japanese french belgian].freeze

  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: CATEGORY
end
