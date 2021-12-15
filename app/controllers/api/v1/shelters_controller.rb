# frozen_string_literal: true

module Api
  module V1
    class SheltersController < ApplicationController
      def index
        shelters = Shelter.all

        render json: ShelterSerializer.new(shelters).serializable_hash
      end
    end
  end
end
