class ScientistsController < ApplicationController
    before_action :find_scientist, only: [:show, :update, :destroy]

    def index
        render json: Scientist.all, status: :ok
    end

    def show
        render json: @scientist, status: :ok
    end

    def create
        render json: Scientist.create!(scientist_params), status: :created
    end

    def update
        render json: @scientist.update!(scientist_params), status: :ok
    end

    def destroy
        @scientist.destroy
        head :no_content    
    end



   private
   
  def find_scientist 
    @scientst = Scientist.find(params[:id]) 
  end

  def scientist_params
    params.permit(:name, :field_of_study, :avatar)

  end





end
