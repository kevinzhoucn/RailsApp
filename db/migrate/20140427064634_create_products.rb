class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.string :standards
      t.string :description

      t.timestamps
    end
  end
end
