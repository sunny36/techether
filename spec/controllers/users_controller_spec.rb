require 'rails_helper'

describe UsersController, :type => :controller do
  describe "GET show/:id" do
    it "responds successfully with an HTTP 200 status code" do
      user = Fabricate(:user)
      get :show, id: user.id
      require 'byebug'; byebug
      expect(response).to have_http_status(200)
    end
  end
end

