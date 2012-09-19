class CafesController < ApplicationController
  def index
    @cafes = Cafe.all
  end

  def new
  end

  def create
    @cafe = Cafe.create!(params[:cafe])
    flash[:notice] = "#{@cafe.name} was successfully created"
    redirect_to cafes_path
  end

  def edit
    @cafe = Cafe.find params[:id]
  end

  def update
    @cafe = Cafe.find params[:id]
    @cafe.update_attributes!(params[:cafe])
    flash[:notice] = "#{@cafe.name} was successfully updated"
    redirect_to cafe_path(@cafe)
  end

  def destroy
    @cafe = Cafe.find params[:id]
    @cafe.destroy
    flash[:notice] = "#{@cafe.name} was deleted"
    redirect_to cafes_path
  end
end