class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,#[Jerry] add for email confirm
         :recoverable, :rememberable, :trackable, :validatable

  #[Jerry] add because we want to track the relation between user and payment
  #when user sign up, not only hit the user db, will also hit the payment db because their paid.
  has_one :payment
  accepts_nested_attributes_for :payment
end
