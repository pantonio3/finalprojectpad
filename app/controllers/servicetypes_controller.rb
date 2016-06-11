class ServicetypesController < ApplicationController
  def index
    @servicetypes = Servicetype.all
  end

  def show
    @servicetype = Servicetype.find(params[:id])
  end

  def new
    @servicetype = Servicetype.new
  end

  def create
    @servicetype = Servicetype.new
    @servicetype.name = params[:name]

    if @servicetype.save
      redirect_to "/servicetypes", :notice => "Servicetype created successfully."
    else
      render 'new'
    end
  end

  def edit
    @servicetype = Servicetype.find(params[:id])
  end

  def update
    @servicetype = Servicetype.find(params[:id])

    @servicetype.name = params[:name]

    if @servicetype.save
      redirect_to "/servicetypes", :notice => "Servicetype updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @servicetype = Servicetype.find(params[:id])

    @servicetype.destroy

    redirect_to "/servicetypes", :notice => "Servicetype deleted."
  end
end
