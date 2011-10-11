class Image < ActiveRecord::Base
  belongs_to :experiment
  has_many :testspots

  def as_json(options = {})
    super(include: [:testspots])
  end
end
