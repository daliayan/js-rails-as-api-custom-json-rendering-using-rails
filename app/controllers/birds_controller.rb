class BirdsController < ApplicationController

  def index
    birds = Bird.all
    render json: birds.to_json(except: [:created_at, :updated_at])
  end

  # OR
  # def index
  #   birds = Bird.all
  #   render json: birds, only: [:id, :name, :species]
  # end 

  # OR

  # def index
  #   birds = Bird.all
  #   render json: birds, except: [:created_at, :updated_at]
  # end 

  def show
    bird = Bird.find_by(id: params[:id])
    render json: bird.slice(:id, :name, :species)
  end 
end 