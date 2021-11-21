require 'spec_helper'

RSpec.describe PokemonsController, type: :controller do
  describe "GET #index" do
    before { get :index }
    it { should respond_with(200) }
  end
end
