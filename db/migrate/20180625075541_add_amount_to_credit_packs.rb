class AddAmountToCreditPacks < ActiveRecord::Migration[5.1]
  def change
    add_column :credit_packs, :amount_credit, :integer
  end
end
