# frozen_string_literal: true

class ShelterSerializer
  include JSONAPI::Serializer

  attributes :name, :city, :rank, :foster_program
end
