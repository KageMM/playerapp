class AddAttachmentAvatarToMatches < ActiveRecord::Migration
  def self.up
    change_table :matches do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :matches, :avatar
  end
end
