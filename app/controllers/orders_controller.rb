class OrdersController < ApplicationController

  def create
  creditPack = CreditPack.find(params[:c_p_id])
  order  = Order.create!(credit_pack_sku: creditPack.sku, amount: creditPack.price, state: 'pending', user: current_user)

  redirect_to new_order_payment_path(order)
  end
end
