class CreateServers < ActiveRecord::Migration[5.0]
  def change
    create_table :servers do |t|
      t.string :host_name
      t.string :ip_address
      t.string :operating_system
      t.integer :cpu_cores
      t.integer :memory
      t.integer :disk_space
      t.references :form, foreign_key: true

      t.timestamps
    end
  end
end
