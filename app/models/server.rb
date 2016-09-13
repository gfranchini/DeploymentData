class Server < ApplicationRecord
  belongs_to :forms, required: false

  def self.form_counter
    @form_id = Form.last.id
  end

end
