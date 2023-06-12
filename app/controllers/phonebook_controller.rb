class PhonebookController < ApplicationController
  def index
    @contacts = Contact.order(:first_name)

  respond_to do |format|
    format.html do
      if params[:view] == 'grid'
        render 'grid_index'
      else
        render 'list_index'
      end
    end
  end
  end
  
    def show
      @contact = Contact.find(params[:id])
    end
  
    def new
      @contact = Contact.new
    end
  
    def create
      @contact = Contact.new(contact_params)
      if @contact.save
        redirect_to phonebook_path, notice: 'Contact created successfully.'
      else
        render :new
      end
    end
  
    def edit
      @contact = Contact.find(params[:id])
    end
  
    def update
      @contact = Contact.find(params[:id])
      if @contact.update(contact_params)
        redirect_to phonebook_path, notice: 'Contact updated successfully.'
      else
        render :edit
      end
    end
  
    def destroy
      @contact = Contact.find(params[:id])
      @contact.destroy
      redirect_to phonebook_path, notice: 'Contact deleted successfully.'
    end
  
    private
  
    def contact_params
      params.require(:contact).permit(:first_name, :last_name, :email, :phone_number)
    end
  end
  