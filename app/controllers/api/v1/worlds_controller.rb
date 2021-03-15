class Api::V1::WorldsController < ApplicationController

  def index
    worlds = World.all
    comments = Comment.all
    render json: WorldSerializer.new(worlds)
  end

  def create
    world = World.new(world_params)
    if world.save
      render json: WorldSerializer.new(world), status: :accepted
    else
      render json: {error: world.errors.full_messages}, status: :unprocessable_entity
    end
  end


  def update
    world = World.find_by(id: params[:id])
    world.likes = params[:likes]
    if world.save
      render json: WorldSerializer.new(world)
    else
      render json: {error: world.errors.full_messages}, status: :unprocessable_entity
    end
  end


  private

  def world_params
    params.require(:world).permit(:name, :seed, :description, :image_url, :creator)
  end


end
