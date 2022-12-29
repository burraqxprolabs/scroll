class BusinessesController < ApplicationController
  before_action :set_post, only: %i[ show edit update destroy ]

  def index
    @businesses = Business.all
  end

  def new
    @business = Business.new
  end

  def create
    @business = Business.new(business_params)

    if @business.save
      redirect_to business_plaids_authenticated_path(@business.id)
    else
      render :new
    end
  end

  private

  def set_business
    @business = business.find(params[:id])
  end

  def business_params
    params.require(:business).permit(:title)
  end
end
