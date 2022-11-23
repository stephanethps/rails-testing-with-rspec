require 'rails_helper'

RSpec.describe Todo, type: :model do

  describe '#validations' do
    let(:todo) { build(:todo) }

    it { expect(todo).to validate_presence_of(:title) }
  end

  describe '.completed' do
    context 'with flag' do
      it 'includes completed todo' do
        completed_todo = create(:todo, completed: true)
        expect(described_class.completed).to include(completed_todo)
      end
    end

    # context 'without flag' do 
    # end
  end
end
