Rails.application.routes.draw do
  resources :roles
  resources :users
  resources :dashboard do
	  collection do 
	  	get 'report' => 'dashboard#report',as: :report
	  end
  end

  root 'home#index'
  get 'energy' => 'home#energy'
  get 'water'  => 'home#water'
end
