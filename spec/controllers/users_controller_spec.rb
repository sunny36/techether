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

    it "retrieves the correct amount of favourite subjects" do
    end

    it "retrieves the correct amount of favourited subjects" do
    end

    it "retrieves the correct amount of favourited resources" do
    end

    context "when the user has no image set" do
      it "returns the default user image" do
      end
    end

    context "when the user has an image set" do
      it "returns the user's image" do
      end
    end

    it "returns all recent activity done by the user" do
    end

    it "returns the right count for ratings from the user" do
    end

    it "returns the right count for subjects from the user" do
    end

    it "returns the right count for resources from the user" do
    end
  end
end

