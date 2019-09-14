class CostsController < ApplicationController
   def index
    @costs = Cost.all
   end
   def show
    @cost = Cost.find(params[:id])
   end
   def new
    @cost = Cost.new
   end
   def create
    @cost = Cost.new(controller_params)
    if @cost.save
        redirect_to :costs
    else
        render "new"
    end
   end
   def edit
    @cost = Cost.find(params[:id])
   end
   def update
    @cost = Cost.find(params[:id])
    @cost.attributes = controller_params
    if @cost.save
    redirect_to :costs
    else
    render "edit"
    end
   end
   def destroy
    @cost=Cost.find(params[:id])
    @cost.destroy
    redirect_to :costs
   end
end

private

def controller_params
    params.require(:cost).permit(
    :day,
    :user_name,
    :content,
    :price
    )
end