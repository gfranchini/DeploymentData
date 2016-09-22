class CreateForms < ActiveRecord::Migration[5.0]
  def change
    create_table :forms do |t|
      t.string :server_environment
      t.string :server_location
      t.string :server_purpose
      t.string :application_name
      t.string :server_accessibility
      t.text :project_description

      t.timestamps
    end
  end
end
