class CreateArchitectures < ActiveRecord::Migration[5.0]
  def change
    create_table :architectures do |t|
      t.string :description
      t.string :text
      t.references :form, foreign_key: true

      t.timestamps
    end
  end
end
