class ChangeFormsColumns < ActiveRecord::Migration[5.0]
  def change
    rename_column :forms, :application_name, :application_name
    rename_column :forms, :project_description, :application_description
  end
end
