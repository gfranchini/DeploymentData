class AddFormIdToLoadBalancers < ActiveRecord::Migration[5.0]
  def change
    add_reference :load_balancers, :form, foreign_key: true
  end
end
