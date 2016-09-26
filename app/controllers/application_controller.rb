class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  #[Jerry]
  before_action :authenticate_user!
end
