class ChangeMerchantToSignup < ActiveRecord::Migration[6.0]
  def change
    rename_table :merchants, :signups 
  end
end
