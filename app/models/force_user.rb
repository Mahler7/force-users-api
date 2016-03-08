class ForceUser < ActiveRecord::Base

  validates :name, presence: true
  validates :title, presence: true
  validates :lightsaber_color, presence: true
  validates :affiliation, presence: true
  validates :location, presence: true
  validates :dark_or_light, presence: true

  
end
