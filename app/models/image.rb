class Image < ActiveRecord::Base
  has_many :testspots

  def as_json(options = {})
    super(include: [:testspots])
  end
end
