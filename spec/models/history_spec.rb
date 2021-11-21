require 'spec_helper'

RSpec.describe History, type: :model do

  describe 'Association Tests' do
    it { should belong_to(:player1) }

    it { should belong_to(:player2) }
  end

  # it 'should create a History' do
  #   create(:history)
  #   expect(described_class.count).to eq(1)
  # end
  
end
