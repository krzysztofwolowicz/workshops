class AddForMonthToPayments < ActiveRecord::Migration
  def change
    add_column :payments, :for_month, :date
  end
end
