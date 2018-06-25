class CreateCreditPacks < ActiveRecord::Migration[5.1]
  def change
    create_table :credit_packs do |t|
      t.string :name
      t.string :sku

      t.timestamps
    end
  end
end
