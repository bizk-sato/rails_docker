# frozen_string_literal: true

class SubjectsController < ApplicationController
  def index
    @subjects = Subject.all
    @subject = Subject.new
  end

  def create
    @subject = Subject.new(controller_params_subjects)
    if @subject.save
      redirect_to :subjects
    else
      render 'new'
    end
  end

  def edit
    @subject = Subject.find(params[:id])
  end

  def update
    @subject = Subject.find(params[:id])
    @subject.attributes = controller_params_subjects
    if @subject.save
      redirect_to :subjects
    else
      render 'edit'
    end
  end

  def destroy
    @subject = Subject.find(params[:id])
    @subject.destroy
    redirect_to :subjects
  end
end

private
def controller_params_subjects
  params.require(:subject).permit(:name)
end
