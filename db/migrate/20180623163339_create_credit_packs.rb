class CreateCreditPacks < ActiveRecord::Migration[5.1]
  def change
    create_table :credit_packs do |t|
      t.string :sku
      t.string :name
      t.integer :credit

      t.timestamps
    end
  end
end
