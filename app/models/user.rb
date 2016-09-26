class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,#[Jerry] add for email confirm
         :recoverable, :rememberable, :trackable, :validatable
end
