class ImagesController < ApplicationController
  respond_to :html, :json
  def index
    @images = Image.includes(:testspots).where(is_template: true)
    respond_with(@images)
  end
end
