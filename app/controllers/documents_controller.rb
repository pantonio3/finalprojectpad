class DocumentsController < ApplicationController
  def index
    @documents = Document.all
  end

  def show
    @document = Document.find(params[:id])
  end

  def new
    @document = Document.new
  end

  def create
    @document = Document.new
    @document.name = params[:name]
    @document.document_type_id = params[:type]
    @document.user_id = params[:user_id]
    @document.service_id = params[:service_id]

    if @document.save
      redirect_to "/documents", :notice => "Document created successfully."
    else
      render 'new'
    end
  end

  def edit
    @document = Document.find(params[:id])
  end

  def update
    @document = Document.find(params[:id])

    @document.name = params[:name]
    @document.document_type_id = params[:type]
    @document.user_id = params[:user_id]
    @document.service_id = params[:service_id]

    if @document.save
      redirect_to "/documents", :notice => "Document updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @document = Document.find(params[:id])

    @document.destroy

    redirect_to "/documents", :notice => "Document deleted."
  end
end
