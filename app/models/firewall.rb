class Firewall < ApplicationRecord
  belongs_to :form, required: false

  def self.firewall_count
    @form_count = Form.last.firewall.count
  end

  def self.firewall_detail
    @fwdetails = Form.last.firewall.last.details
  end
end
