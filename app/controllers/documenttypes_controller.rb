class DocumenttypesController < ApplicationController
  def index
    @documenttypes = Documenttype.all
  end

  def show
    @documenttype = Documenttype.find(params[:id])
  end

  def new
    @documenttype = Documenttype.new
  end

  def create
    @documenttype = Documenttype.new
    @documenttype.name = params[:name]

    if @documenttype.save
      redirect_to "/documenttypes", :notice => "Documenttype created successfully."
    else
      render 'new'
    end
  end

  def edit
    @documenttype = Documenttype.find(params[:id])
  end

  def update
    @documenttype = Documenttype.find(params[:id])

    @documenttype.name = params[:name]

    if @documenttype.save
      redirect_to "/documenttypes", :notice => "Documenttype updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @documenttype = Documenttype.find(params[:id])

    @documenttype.destroy

    redirect_to "/documenttypes", :notice => "Documenttype deleted."
  end
end
