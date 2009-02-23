class PhotosController < ApplicationController
  session :cookie_only => false, :only => [:create]
  def index
    @photos = Photo.all
  end
  
  def create
    @photo = Photo.new(:image => swf_upload_data)
    
    if @photo.save
      respond_to do |format|
        format.js {}
        format.html { redirect_to root_path }
      end
    else
      raise "Errorr occured"
    end
  end
end
