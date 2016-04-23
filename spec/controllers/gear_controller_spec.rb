require 'rails_helper'

RSpec.describe GearController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #recycle" do
    it "returns http success" do
      get :recycle
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #sold" do
    it "returns http success" do
      get :sold
      expect(response).to have_http_status(:success)
    end
  end

end
