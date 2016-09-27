class Payment < ApplicationRecord
  #these below attrbute will throw to stripe, we will not save in our db.
  attr_accessor :card_number, :card_cvv, :card_expires_month, :card_expires_year
  #add belongs_to to make relation with user.
  belongs_to :user


  def self.month_options
    #for display
    Date::MONTHNAMES.compact.each_with_index.map { |name, i| ["#{i+1} - #{name}", i+1]}

  end

  def self.year_options
    #from this year to 10 years later to display for the year options
    (Date.today.year..(Date.today.year+10)).to_a

  end
  #use while we creating the registion.
  def process_payment
    #ref https://stripe.com/docs/checkout/rails
    customer = Stripe::Customer.create email: email, card: token

    Stripe::Charge.create customer: customer.id,
                          amount: 1000,
                          description: 'Premium',
                          currency: 'usd'

  end




end
