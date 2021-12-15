# frozen_string_literal: true

module Api
  module V1
    class PetsController < ApplicationController
      def index
        pets = Pet.all

        render json: PetSerializer.new(pets).serializable_hash
      end
    end
  end
end
