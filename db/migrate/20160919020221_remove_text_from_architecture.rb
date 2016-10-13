class RemoveTextFromArchitecture < ActiveRecord::Migration[5.0]
  def change
    remove_column :architectures, :text, :string
    remove_column :architectures, :description, :string
    add_column    :architectures, :description, :text
  end
end
