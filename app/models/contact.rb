class Contact < ActiveRecord::Base
  attr_accessible :address1, :address2, :english_email, :english_mobile, :english_skype, :postcode, :russian_email, :russian_mobile, :russian_skype, :tel, :website
end
