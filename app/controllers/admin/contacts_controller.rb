class Admin::ContactsController < ApplicationController
  layout 'admin'
  before_filter :authenticate_admin!
  # GET /contacts
  # GET /contacts.json
  def index
    @contact = Contact.last

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @contacts }
    end
  end

  # GET /contacts/1
  # GET /contacts/1.json
  def show
    @contact = Contact.last

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @contact }
    end
  end

  # GET /contacts/1/edit
  def edit
    @contact = Contact.last
  end

  # PUT /contacts/1
  # PUT /contacts/1.json
  def update
    @contact = Contact.last

    respond_to do |format|
      if @contact.update_attributes(params[:contact])
        format.html { redirect_to edit_admin_contact_path(true), notice: 'Contact was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

end
