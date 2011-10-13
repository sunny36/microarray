class ImagesController < ApplicationController
  respond_to :html, :json
  def index
    #@images = Image.for_experiment(params[:experiment_id]).only_templates
    @images = Image.where(params[:experiment_id]).where(is_template: true)
    @experiment = Experiment.find(params[:experiment_id])
    respond_with(@images)
  end
end
