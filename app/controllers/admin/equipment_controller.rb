class Admin::EquipmentController < ApplicationController
  layout 'admin'
  before_filter :authenticate_admin!, :only => [:admin]
  # GET /equipment
  # GET /equipment.json
  def index
    @admin_equipment = Equipment.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @equipment }
    end
  end

  # GET /equipment/1
  # GET /equipment/1.json
  def show
    @admin_equipment = Equipment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @admin_equipment }
    end
  end

  # GET /equipment/new
  # GET /equipment/new.json
  def new
    @admin_equipment = Equipment.new
    
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @admin_equipment }
    end
  end

  # GET /equipment/1/edit
  def edit
    @admin_equipment = Equipment.find(params[:id])
  end

  # POST /equipment
  # POST /equipment.json
  def create
    @admin_equipment = Equipment.new(params[:equipment])

    respond_to do |format|
      if @admin_equipment.save
        format.html { redirect_to admin_equipment_index_url, notice: 'Equipment was successfully created.' }
        format.json { render json: @admin_equipment, status: :created, location: @admin_equipment }
      else
        format.html { render action: "new" }
        format.json { render json: @admin_equipment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin/equipment/1
  # PUT /admin/equipment/1.json
  def update
    @admin_equipment = Admin::Equipment.find(params[:id])

    respond_to do |format|
      if @admin_equipment.update_attributes(params[:admin_equipment])
        format.html { redirect_to @admin_equipment, notice: 'Equipment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @admin_equipment.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @admin_equipment = Equipment.find(params[:id])
    @admin_equipment.destroy

    respond_to do |format|
      format.html { redirect_to admin_equipment_index_url }
      format.json { head :no_content }
    end
  end
end
