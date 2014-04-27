class AddAttachmentMaterialsImgDimensionsImgDrawing1ImgDrawing2ImgPhotoToProducts < ActiveRecord::Migration
  def self.up
    change_table :products do |t|
      t.attachment :materials_img
      t.attachment :dimensions_img
      t.attachment :drawing1_img
      t.attachment :drawing2_img
      t.attachment :photo
    end
  end

  def self.down
    drop_attached_file :products, :materials_img
    drop_attached_file :products, :dimensions_img
    drop_attached_file :products, :drawing1_img
    drop_attached_file :products, :drawing2_img
    drop_attached_file :products, :photo
  end
end
