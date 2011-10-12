class Image < ActiveRecord::Base
  belongs_to :experiment
  has_many :testspots

  scope :with_experiments, joins(:experiment)
  scope :include_testspots, includes(:testspots)
  scope :only_templates, where("images.is_template = ?", true)
  scope :for_experiment,
        lambda { |experiment_id| with_experiments.include_testspots.where("experiments.id = ?", experiment_id) }

  def as_json(options = {})
    super(include: [:testspots])
  end
end
