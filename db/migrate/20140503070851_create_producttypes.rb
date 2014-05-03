class CreateProducttypes < ActiveRecord::Migration
  def change
    create_table :producttypes do |t|
      t.string :name

      t.timestamps
    end
    Producttype.create(name: "Gate Valve")
    Producttype.create(name: "Globe Valve")
    Producttype.create(name: "Check Valve")
    Producttype.create(name: "Ball Valve")
    Producttype.create(name: "Butterfly Valve")
    Producttype.create(name: "Control Valve")
    Producttype.create(name: "Fluorine Line Value")
    Producttype.create(name: "Other")
  end
end
