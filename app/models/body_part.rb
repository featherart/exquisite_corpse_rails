class BodyPart < ActiveRecord::Base
  belongs_to :corpse
  attr_accessible :image
end
