require "rails_helper"

RSpec.describe PhotosController, type: :controller do
  # new
  describe "GET /photos/new" do
    it "displays the photo creation form" do
      get :new

      expect(response).to have_http_status(:ok)
    end
  end

  # create
  describe "POST /photos" do
  end

  # index
  describe "GET /photos" do
  end

  # show
  describe "GET /photos/id/edit" do
  end

  # edit
  describe "GET /photos/id/edit" do
  end

  # update
  describe "PUT /photos/id" do
  end

  # destroy
  describe "DELETE /photos/id" do
  end
end
