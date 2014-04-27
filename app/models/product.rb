class Product < ActiveRecord::Base
  attr_accessible :description, :standards, :title, :materials_img, :dimensions_img, :drawing1_img, :drawing2_img, :photo

  has_attached_file :materials_img, :styles => { :large => "600x400>", :medium => "300x300>", :thumb => "100x100>" }, 
                    :default_url => "/images/:style/missing.png", :whiny => false,
                    :url => "/uploadfiles/:class/:attachment/:id_partition/materials/:basename_:style.:extension",
                    :path => ":rails_root/public/uploadfiles/:class/:attachment/:id_partition/materials/:basename_:style.:extension"
  validates_attachment_content_type :materials_img, :content_type => /\Aimage\/.*\Z/
  validates_attachment_size :materials_img, :less_than => 2.megabytes

  has_attached_file :dimensions_img, :styles => { :large => "600x400>", :medium => "300x300>", :thumb => "100x100>" }, 
                    :default_url => "/images/:style/missing.png", :whiny => false,
                    :url => "/uploadfiles/:class/:attachment/:id_partition/dimensions/:basename_:style.:extension",
                    :path => ":rails_root/public/uploadfiles/:class/:attachment/:id_partition/dimensions/:basename_:style.:extension"
  validates_attachment_content_type :dimensions_img, :content_type => /\Aimage\/.*\Z/
  validates_attachment_size :dimensions_img, :less_than => 2.megabytes

  has_attached_file :drawing1_img, :styles => { :large => "600x400>", :medium => "300x300>", :thumb => "100x100>" }, 
                    :default_url => "/images/:style/missing.png", :whiny => false,
                    :url => "/uploadfiles/:class/:attachment/:id_partition/drawing1/:basename_:style.:extension",
                    :path => ":rails_root/public/uploadfiles/:class/:attachment/:id_partition/drawing1/:basename_:style.:extension"
  validates_attachment_content_type :drawing1_img, :content_type => /\Aimage\/.*\Z/
  validates_attachment_size :drawing1_img, :less_than => 2.megabytes

  has_attached_file :drawing2_img, :styles => { :large => "600x400>", :medium => "300x300>", :thumb => "100x100>" }, 
                    :default_url => "/images/:style/missing.png", :whiny => false,
                    :url => "/uploadfiles/:class/:attachment/:id_partition/drawing2/:basename_:style.:extension",
                    :path => ":rails_root/public/uploadfiles/:class/:attachment/:id_partition/drawing2/:basename_:style.:extension"
  validates_attachment_content_type :drawing2_img, :content_type => /\Aimage\/.*\Z/
  validates_attachment_size :drawing2_img, :less_than => 2.megabytes

  has_attached_file :photo, :styles => { :large => "600x400>", :medium => "300x300>", :thumb => "100x100>" }, 
                    :default_url => "/images/:style/missing.png", :whiny => false,
                    :url => "/uploadfiles/:class/:attachment/:id_partition/photo/:basename_:style.:extension",
                    :path => ":rails_root/public/uploadfiles/:class/:attachment/:id_partition/photo/:basename_:style.:extension"
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/
  validates_attachment_size :photo, :less_than => 2.megabytes

  private  
    def random_file_name
      if File.extname(materials_img_file_name).present?
        extension = File.extname(materials_img_file_name).downcase
        self.materials_img.instance_write(:file_name, "#{Time.now.strftime("%Y%m%d%H%M%S")}#{rand(1000)}#{extension}")
      end

      if File.extname(drawing1_img_file_name).present?
        extension = File.extname(drawing1_img_file_name).downcase
        self.drawing1_img.instance_write(:file_name, "#{Time.now.strftime("%Y%m%d%H%M%S")}#{rand(1000)}#{extension}")
      end

      if File.extname(drawing2_img_file_name).present?
        extension = File.extname(drawing2_img_file_name).downcase
        self.drawing2_img.instance_write(:file_name, "#{Time.now.strftime("%Y%m%d%H%M%S")}#{rand(1000)}#{extension}")
      end

      if File.extname(dimensions_img_file_name).present?
        extension = File.extname(dimensions_img_file_name).downcase
        self.dimensions_img.instance_write(:file_name, "#{Time.now.strftime("%Y%m%d%H%M%S")}#{rand(1000)}#{extension}")
      end

      if File.extname(photo_file_name).present?
        extension = File.extname(photo_file_name).downcase
        self.photo.instance_write(:file_name, "#{Time.now.strftime("%Y%m%d%H%M%S")}#{rand(1000)}#{extension}")
      end
    end
end
