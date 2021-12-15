# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Api/V1/Pets', type: :request do
  let(:body) { JSON.parse(response.body, symbolize_names: true) }

  describe 'GET api/v1/shelters' do
    context 'when valid' do
      before do
        create_list(:pet, 3)
        get api_v1_pets_path
      end

      it { expect(body).to be_a(Hash) }
      it { expect(body).to have_key(:data) }
      it { expect(body[:data]).to be_a(Array) }
      it { expect(body[:data].count).to eq(3) }
      it { expect(body[:data].first).to have_key(:attributes) }
      it { expect(body[:data].first).to be_a(Hash) }
      it { expect(body[:data].first[:attributes]).to have_key(:name) }
      it { expect(body[:data].first[:attributes][:name]).to be_a(String) }
      it { expect(body[:data].first[:attributes]).to have_key(:age) }
      it { expect(body[:data].first[:attributes][:age]).to be_a(Integer) }
      it { expect(body[:data].first[:attributes]).to have_key(:breed) }
      it { expect(body[:data].first[:attributes][:breed]).to be_a(String) }
      it { expect(body[:data].first[:attributes]).to have_key(:adoptable) }
      it { expect(body[:data].first[:attributes][:adoptable]).to be_in([true, false]) }
    end
  end
end
