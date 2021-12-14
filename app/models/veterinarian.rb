# frozen_string_literal: true

class Veterinarian < ApplicationRecord
  validates :name, presence: true
  validates :review_rating, presence: true, numericality: true
  validates :on_call, presence: true

  belongs_to :veterinary_office
end
