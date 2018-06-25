class OrdersController < ApplicationController
  def show
  end

  def create
    c_p = CreditPack.find(params[:credit_pack_id])
  order  = Order.create!(credit_pack_sku: c_p.sku, amount: c_p.price, state: 'pending', user: current_user)

  redirect_to new_order_payment_path(order)
  end
end
