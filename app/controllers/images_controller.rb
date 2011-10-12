class ImagesController < ApplicationController
  respond_to :html, :json
  def index
    @images = Image.for_experiment(params[:experiment_id]).only_templates
    @experiment = Experiment.find(params[:experiment_id])
    respond_with(@images)
  end
end
