require 'rails_helper'

describe UsersController, :type => :controller do
  let(:user) { Fabricate(:user) }

  describe "GET show/:id" do
    it "responds successfully with an HTTP 200 status code" do
      get :show, id: user.id
      expect(response).to have_http_status(200)
    end

    it "retrieves the correct user" do
      get :show, id: user.id
      expect(response).to have_http_status(200)

      response_user = subject.instance_variable_get(:@user)
      expect(response_user).to_not be_nil
      expect(response_user).to eq(user)
    end
  end
end

