class AddTypeToUser < ActiveRecord::Migration[5.0]
  def change
    add_column    :deployments, :type, :text
  end
end
