class BodyPartController < ApplicationController
  def new
  	@body_part = BodyPart.new
  	render :new
  end

  def save
  end

  def display
  end
end
