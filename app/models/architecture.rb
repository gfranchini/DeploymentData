class Architecture < ApplicationRecord
  has_attached_file :diagram, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :diagram, content_type: /\Aimage\/.*\z/

  belongs_to :form,  required: false

  def self.arch_count
    @count = Form.last.architectures.count
  end

  def self.last_arch_image
      @image = Form.last.architectures.last.diagram.url
  end

  def self.upload_count
    if Form.last.architectures.count == 0
      link_to('Next', new_firewall_path, class: "btn btn-primary pull-right", data: { confirm: 'Are you sure you uploaded your image?' })
    else
      link_to('Next', new_firewall_path, class: "btn btn-primary pull-right")
    end
  end

end
