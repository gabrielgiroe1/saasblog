class CheckoutController < ApplicationController
  def create
    @session = Stripe::Checkout::Session.create({
      success_url: posts_url,
      payment_method_types: ['card'],
      line_items: [
        {price: 'price_1Pv1gGKhoiIp4R7lXs5WLiB2', quantity: 1},

      ],
      mode: 'subscription',
    })
    respond_to do |format|
      format.js
    end
  end
end
