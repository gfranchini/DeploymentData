class Task < ApplicationRecord
  belongs_to :form, required: false
end
