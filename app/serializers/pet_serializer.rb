# frozen_string_literal: true

class PetSerializer
  include JSONAPI::Serializer

  attributes :name, :age, :breed, :adoptable
end
