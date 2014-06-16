class Admin::EquipmentController < ApplicationController
<<<<<<< HEAD
  # GET /admin/equipment
  # GET /admin/equipment.json
  def index
    @admin_equipment = Admin::Equipment.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @admin_equipment }
    end
  end

  # GET /admin/equipment/1
  # GET /admin/equipment/1.json
  def show
    @admin_equipment = Admin::Equipment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @admin_equipment }
    end
  end

  # GET /admin/equipment/new
  # GET /admin/equipment/new.json
  def new
    @admin_equipment = Admin::Equipment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @admin_equipment }
    end
  end

  # GET /admin/equipment/1/edit
  def edit
    @admin_equipment = Admin::Equipment.find(params[:id])
  end

  # POST /admin/equipment
  # POST /admin/equipment.json
  def create
    @admin_equipment = Admin::Equipment.new(params[:admin_equipment])

    respond_to do |format|
      if @admin_equipment.save
        format.html { redirect_to @admin_equipment, notice: 'Equipment was successfully created.' }
        format.json { render json: @admin_equipment, status: :created, location: @admin_equipment }
      else
        format.html { render action: "new" }
        format.json { render json: @admin_equipment.errors, status: :unprocessable_entity }
=======
  layout 'admin'
  before_filter :authenticate_admin!, :only => [:admin]
  # GET /equipment
  # GET /equipment.json
  def index
    @equipment = Equipment.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @equipment }
    end
  end

  # GET /equipment/1
  # GET /equipment/1.json
  def show
    @equipment = Equipment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @equipment }
    end
  end

  # GET /equipment/new
  # GET /equipment/new.json
  def new
    @equipment = Equipment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @equipment }
    end
  end

  # GET /equipment/1/edit
  def edit
    @equipment = Equipment.find(params[:id])
  end

  # POST /equipment
  # POST /equipment.json
  def create
    @equipment = Equipment.new(params[:equipment])

    respond_to do |format|
      if @equipment.save
        format.html { redirect_to @equipment, notice: 'Equipment was successfully created.' }
        format.json { render json: @equipment, status: :created, location: @equipment }
      else
        format.html { render action: "new" }
        format.json { render json: @equipment.errors, status: :unprocessable_entity }
>>>>>>> bcfa866b1bbd64aebe4c3a10680050bc753c7dc7
      end
    end
  end

<<<<<<< HEAD
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
=======
  # PUT /equipment/1
  # PUT /equipment/1.json
  def update
    @equipment = Equipment.find(params[:id])

    respond_to do |format|
      if @equipment.update_attributes(params[:equipment])
        format.html { redirect_to @equipment, notice: 'Equipment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @equipment.errors, status: :unprocessable_entity }
>>>>>>> bcfa866b1bbd64aebe4c3a10680050bc753c7dc7
      end
    end
  end

<<<<<<< HEAD
  # DELETE /admin/equipment/1
  # DELETE /admin/equipment/1.json
  def destroy
    @admin_equipment = Admin::Equipment.find(params[:id])
    @admin_equipment.destroy

    respond_to do |format|
      format.html { redirect_to admin_equipment_index_url }
=======
  # DELETE /equipment/1
  # DELETE /equipment/1.json
  def destroy
    @equipment = Equipment.find(params[:id])
    @equipment.destroy

    respond_to do |format|
      format.html { redirect_to equipment_index_url }
>>>>>>> bcfa866b1bbd64aebe4c3a10680050bc753c7dc7
      format.json { head :no_content }
    end
  end
end
