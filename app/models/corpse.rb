class Corpse < ActiveRecord::Base
  has_many :body_parts

  def head
  	body_parts.where(name: "head").first
  end

  def torso
  	body_parts.where(name: "torso").first
  end

  def legs
    body_parts.where(name: "legs").first
  end
end
