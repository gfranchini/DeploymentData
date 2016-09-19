class CreateLoadBalancers < ActiveRecord::Migration[5.0]
  def change
    create_table :load_balancers do |t|
      t.string :type
      t.string :ip_address
      t.string :type
      t.string :points_to
      t.string :ports
      t.string :ssl_location

      t.timestamps
    end
  end
end
