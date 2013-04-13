class BodyPart < ActiveRecord::Base
  attr_accessible :image_head, :image_body, :image_legs, :name
end
