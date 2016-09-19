class Architecture < ApplicationRecord
  belongs_to :form
  has_attached_file :diagram, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment :diagram, content_type: { content_type: "application/pdf" }

end
