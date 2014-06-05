class AddAttachmentAvatarToEquipment < ActiveRecord::Migration
  def self.up
    change_table :equipment do |t|
      t.attachment :avatar
    end
  end

  def self.down
    drop_attached_file :equipment, :avatar
  end
end
