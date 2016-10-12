class CreateAccesses < ActiveRecord::Migration[5.0]
  def change
    create_table :accesses do |t|
      t.string :adminid
      t.string :passsword
      t.string :contact
      t.string :access
      t.references :form, foreign_key: true

      t.timestamps
    end
  end
end
