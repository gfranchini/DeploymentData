class Server < ApplicationRecord
  belongs_to :form, required: false

  def self.form_counter
    @form_id = Form.last.id
  end

end
