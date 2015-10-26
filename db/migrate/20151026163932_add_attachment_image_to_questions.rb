class AddAttachmentImageToQuestions < ActiveRecord::Migration
  def self.up
    change_table :questions do |t|
      t.attachment :image_one
      t.attachment :image_two
    end
  end

  def self.down
    remove_attachment :questions, :image_one
    remove_attachment :questions, :image_two
  end
end
