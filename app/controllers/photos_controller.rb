class PhotosController < ApplicationController
  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params)

    respond_to do |format|
      if @feed.save
        format.html do
          flash[:success] = I18n.t(".success")
          redirect_to @feed
        end

        format.js do
          flash.now[:success] = I18n.t(".success")
        end
      else
        format.html do
          flash.now[:error] = I18n.t(".failure")
          render :new
        end

        format.js do
          flash.now[:error] = I18n.t(".failure")
          render :new
        end
      end
    end
  end

  private

  def photo_params
    params.require(:photo).permit(
      :slug,
      :title,
      :description,
      :copyright_year,
      :geoprivacy,
      :latitude,
      :longitude,
      :shutter_speed
      :aperture
    ).merge(user: current_user)
  end
end
