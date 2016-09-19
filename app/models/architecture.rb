class Architecture < ApplicationRecord
  belongs_to :form,  required: false
  has_attached_file :diagram, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :diagram, content_type: /\Aimage\/.*\z/

end
