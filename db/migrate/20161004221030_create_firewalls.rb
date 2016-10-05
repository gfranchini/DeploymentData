class CreateFirewalls < ActiveRecord::Migration[5.0]
  def change
    create_table :firewalls do |t|
      t.text :details
      t.integer :form_id
      t.references :form, foreign_key: true

      t.timestamps
    end
  end
end
