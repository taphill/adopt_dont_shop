# frozen_string_literal: true

class VeterinaryOffice < ApplicationRecord
  validates :name, presence: true
  validates :max_patient_capacity, presence: true, numericality: true
  validates :boarding_services, presence: true

  has_many :veterinarians, dependent: :destroy
end
