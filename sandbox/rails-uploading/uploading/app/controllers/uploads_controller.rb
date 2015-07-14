require 'pry'
class UploadsController < ApplicationController

  def new
    @upload = Upload.new
    render "new"
  end

  def create
    @upload.to_ftp(params[:file_to_upload])
  end

end
