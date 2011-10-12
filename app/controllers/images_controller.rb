class ImagesController < ApplicationController
  respond_to :html, :json
  def index
    @images = Image.for_experiment(params[:experiment_id]).only_templates
    respond_with(@images)
  end
end
