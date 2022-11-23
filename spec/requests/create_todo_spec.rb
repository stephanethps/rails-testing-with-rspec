# frozen_string_literal: true

require 'rails_helper'

# create todo api specs
RSpec.describe 'create todo api', type: :request do
  describe 'post /todos' do
    let(:valid_attributes) { attributes_for(:todo, title: 'blah') }
    let(:invalid_attributes) { { name: '' } }

    context 'when request is valid' do
      it 'creates a todo' do
        expect do
          post '/todos', params: { todo: valid_attributes }
        end.to change(Todo, :count).by(1)

        expect(response.body).to include('blah')
        expect(response).to have_http_status(:created)
      end
    end
  end
end
