class AddFormIdToCertificates < ActiveRecord::Migration[5.0]
  def change
    add_reference :certificates, :form, foreign_key: true
  end
end
