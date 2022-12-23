require 'stripe'

class StripeService

  def Initialize()
    Stripe.api_key = ENV['STRIPE_SECRET_KEY']
  end

end
