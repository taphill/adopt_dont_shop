# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Api/V1/Shelters', type: :request do
  let(:body) { JSON.parse(response.body, symbolize_names: true) }

  describe 'GET api/v1/shelters' do
    context 'when valid' do
      before do
        create_list(:shelter, 3)
        get api_v1_shelters_path
      end

      it { expect(body).to be_a(Hash) }
      it { expect(body).to have_key(:data) }
      it { expect(body[:data]).to be_a(Array) }
      it { expect(body[:data].count).to eq(3) }
      it { expect(body[:data].first).to have_key(:attributes) }
      it { expect(body[:data].first).to be_a(Hash) }
      it { expect(body[:data].first[:attributes]).to have_key(:name) }
      it { expect(body[:data].first[:attributes][:name]).to be_a(String) }
      it { expect(body[:data].first[:attributes]).to have_key(:city) }
      it { expect(body[:data].first[:attributes][:city]).to be_a(String) }
      it { expect(body[:data].first[:attributes]).to have_key(:rank) }
      it { expect(body[:data].first[:attributes][:rank]).to be_a(Integer) }
      it { expect(body[:data].first[:attributes]).to have_key(:foster_program) }
      it { expect(body[:data].first[:attributes][:foster_program]).to be_in([true, false]) }
    end
  end
end
