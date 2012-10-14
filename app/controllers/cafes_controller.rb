class CafesController < ApplicationController
	before_filter :authenticate_user!, :except => [:show, :index]

  def index
    @cafes = Cafe.all
  end

  def show
    id = params[:id]      #retrive cafe ID from URI
    @cafe = Cafe.find(id) #look up cafe
    #will render app/views/cafes/show.html.haml by default
  end

  def new
    # default: render 'new' template
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
		respond_to do |format|
			format.html {flash[:notice] = "#{@cafe.name} was successfully updated"; redirect_to cafe_path(@cafe) }
			format.js {flash[:notice] = "#{@cafe.name} was successfully updated"; redirect_to edit_cafe_path(@cafe)}#edit
		end
  end

  def destroy
    @cafe = Cafe.find params[:id]
    @cafe.destroy
		respond_to do |format|
			format.html {flash[:notice] = "#{@cafe.name} was deleted"; redirect_to cafes_path}
			format.js {flash[:notice] = "#{@cafe.name} was deleted"}
		end
  end
end