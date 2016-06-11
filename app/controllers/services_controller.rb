class ServicesController < ApplicationController
  def index
    @services = Servicetype.all
  end

  def show
    @service = Service.find(params[:id])
  end

  def new
    @service = Service.new
  end

  def create
    @service = Service.new
    @service.name = params[:name]
    @service.type = params[:type]
    @service.cost = params[:cost]
    @service.user_id = params[:user_id]

    if @service.save
      redirect_to "/services", :notice => "Service created successfully."
    else
      render 'new'
    end
  end

  def edit
    @service = Service.find(params[:id])
  end

  def update
    @service = Service.find(params[:id])

    @service.name = params[:name]
    @service.type = params[:type]
    @service.cost = params[:cost]
    @service.user_id = params[:user_id]

    if @service.save
      redirect_to "/services", :notice => "Service updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @service = Service.find(params[:id])

    @service.destroy

    redirect_to "/services", :notice => "Service deleted."
  end
end
