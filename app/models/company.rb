class Company < ActiveRecord::Base
  attr_accessible :content, :avatar
  before_save :random_file_name

  validates_presence_of :content
  validates_length_of :content, :maximum => 20000

  has_attached_file :avatar, :styles => { :large => "600x400>", :medium => "300x300>", :thumb => "100x100>" }, 
                    :default_url => "/images/:style/missing.png", :whiny => false,
                    :url => "/uploadfiles/:class/:attachment/:id_partition/:basename_:style.:extension",
                    :path => ":rails_root/public/uploadfiles/:class/:attachment/:id_partition/:basename_:style.:extension"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
  validates_attachment_size :avatar, :less_than => 2.megabytes

  private  
    def random_file_name
      if File.extname(avatar_file_name).present?
        extension = File.extname(avatar_file_name).downcase
        self.avatar.instance_write(:file_name, "#{Time.now.strftime("%Y%m%d%H%M%S")}#{rand(1000)}#{extension}")
      end
    end
end
