class Certificate < ApplicationRecord
  belongs_to :form,  required: false
end
