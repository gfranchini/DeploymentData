class CreateFirewalls < ActiveRecord::Migration[5.0]
  def change
    create_table :firewalls do |t|
      t.text :details

      t.timestamps
    end
  end
end
