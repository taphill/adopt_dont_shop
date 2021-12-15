# frozen_string_literal: true

class ShelterSerializer
  include JSONAPI::Serializer

  attributes :name, :city, :state, :rank, :foster_program
end
