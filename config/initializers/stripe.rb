#copy from doc from stripe
#https://stripe.com/docs/checkout/rails
Rails.configuration.stripe = {
  #:publishable_key => ENV['PUBLISHABLE_KEY'],
  #:secret_key      => ENV['SECRET_KEY']
  #STRIPE_TEST_PUBLISHABLE_KEY you name it. and export later in /home/xxxxx/.bashrc
  :publishable_key => ENV['STRIPE_TEST_PUBLISHABLE_KEY'],
  :secret_key      => ENV['STRIPE_TEST_SECRET_KEY']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
