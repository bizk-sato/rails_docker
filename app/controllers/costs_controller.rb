# frozen_string_literal: true

class CostsController < ApplicationController
  def index
    @costs = Cost.all
  end
  
  def new
    @cost = Cost.new
  end

  def create
    @cost = Cost.new(controller_params_costs)
    if @cost.save
      redirect_to :costs
    else
      render 'new'
    end
  end

  def edit
    @cost = Cost.find(params[:id])
  end

  def update
    @cost = Cost.find(params[:id])
    @cost.attributes = controller_params_costs
    if @cost.save
      redirect_to :costs
    else
      render 'edit'
    end
  end

  def destroy
    @cost = Cost.find(params[:id])
    @cost.destroy
    redirect_to :costs
  end
end

private

def controller_params_costs
  params.require(:cost).permit(
    :day, :user_id, :subject_id, :detail_id, :price
  )
end
