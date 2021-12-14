# frozen_string_literal: true

class Shelter < ApplicationRecord
  validates :name, presence: true
  validates :city, presence: true
  validates :rank, presence: true, numericality: true
  validates :foster_program, presence: true

  has_many :pets, dependent: :destroy
end
