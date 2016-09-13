class Form < ApplicationRecord
  has_many :servers

def self.form_counter
  @form_id = Form.last.id
end


end
