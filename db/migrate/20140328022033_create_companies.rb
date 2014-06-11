class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.text :content

      t.timestamps
    end
#    Company.create(content: "<p>This is Title</p>")
  end
end
