class Api::V1::AuditionsController < ApplicationController
  before_action :set_audition, only: [:show, :update, :destroy]

  # GET /auditions
  # GET /auditions.json
  def index
    @auditions = Audition.all

    render json: @auditions
  end

  # GET /auditions/1
  # GET /auditions/1.json
  def show
    render json: @audition
  end

  # POST /auditions
  # POST /auditions.json
  def create
    @audition = Audition.new(audition_params)

    if @audition.save
      render json: @audition, status: :created, location: @audition
    else
      render json: @audition.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /auditions/1
  # PATCH/PUT /auditions/1.json
  def update
    @audition = Audition.find(params[:id])

    if @audition.update(audition_params)
      head :no_content
    else
      render json: @audition.errors, status: :unprocessable_entity
    end
  end

  # DELETE /auditions/1
  # DELETE /auditions/1.json
  def destroy
    @audition.destroy

    head :no_content
  end

  private

    def set_audition
      @audition = Audition.find(params[:id])
    end

    def audition_params
      params.require(:audition).permit(:title, :content, :user_id)
    end
end
