class Question < ActiveRecord::Base

  default_scope {order('created_at DESC')}
  validates_presence_of :option_one, :option_two

  has_attached_file :image_one, styles: { medium: "250x200>", thumb: "100x100>" }, default_url: "/images/:style/tiger.jpg"
  validates_attachment_content_type :image_one, content_type: /\Aimage\/.*\Z/

  has_attached_file :image_two, styles: { medium: "250x200>", thumb: "100x100>" }, default_url: "/images/:style/tiger.jpg"
  validates_attachment_content_type :image_two, content_type: /\Aimage\/.*\Z/
end
