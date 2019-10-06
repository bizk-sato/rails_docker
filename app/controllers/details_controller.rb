# frozen_string_literal: true

class DetailsController < ApplicationController
  def index
    @details = Detail.all
    @detail = Detail.new
  end
  
  def create
    @detail = Detail.new(controller_params_details)
    if @detail.save
      redirect_to :details
    else
      render 'new'
    end
  end

  def edit
    @detail = Detail.find(params[:id])
  end

  def update
    @detail = Detail.find(params[:id])
    @detail.attributes = controller_params_details
    if @detail.save
      redirect_to :details
    else
      render 'edit'
    end
  end

  def destroy
    @detail = Detail.find(params[:id])
    @detail.destroy
    redirect_to :details
  end
end

private
def controller_params_details
  params.require(:detail).permit(:subject_id, :name)
end
