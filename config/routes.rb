Rails.application.routes.draw do
  #devise_for :users
  #for registrations go to the registrations_controller then go to the devise registrations_controller
  devise_for :users, :controllers => { :registrations => 'registrations' }
  #get 'welcome/index'
  root 'welcome#index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
