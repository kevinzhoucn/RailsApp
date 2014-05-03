class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :english_email
      t.string :russian_email
      t.string :english_skype
      t.string :russian_skype
      t.string :english_mobile
      t.string :russian_mobile
      t.string :website
      t.string :tel
      t.string :address1
      t.string :address2
      t.string :postcode

      t.timestamps
    end
    Contact.create(english_email: "xxx@email.com", russian_email: "default", english_skype: "default",  russian_skype: "default", english_mobile: "default", russian_mobile: "default", website: "default", tel: "default", address1: "default", address2: "default", postcode: "default")
  end
end
