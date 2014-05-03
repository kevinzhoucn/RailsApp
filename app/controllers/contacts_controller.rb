class ContactsController < ApplicationController
  # GET /contacts
  # GET /contacts.json
  def index
    @contact = Contact.last

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @contact }
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

end
