class Activity < ActiveRecord::Base
  attr_accessible :title
  default_scope order: "created_at DESC"
end
