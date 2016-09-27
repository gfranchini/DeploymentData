class CreateCertificates < ActiveRecord::Migration[5.0]
  def change
    create_table :certificates do |t|
      t.string :description
      t.string :expiration

      t.timestamps
    end
  end
end
