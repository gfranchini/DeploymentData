class AddFormIdToFirewall < ActiveRecord::Migration[5.0]
  def change
    add_reference :firewalls, :form, foreign_key: true
  end
end
