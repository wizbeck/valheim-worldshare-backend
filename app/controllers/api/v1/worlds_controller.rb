class Api::V1::WorldsController < ApplicationController

  def index
    worlds = World.all
    comments = Comment.all
    render json: worlds
  end

  def create
    world = World.new(world_params)
    if world.save
      render json: world, status: :accepted
    else
      render json: {errors: world.errors.full_messages} status: :unprocessable_entity
    end

  end


  private

  def world_params
    params.require(:world).permit(:name, :seed, :description, :image_url, :creator)
  end
end
