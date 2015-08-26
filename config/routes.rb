Rails.application.routes.draw do

  devise_for :users
	if Time.zone.now.hour < 2 and Time.zone.now.hour > 1
		root :to => "index#timer" 
	else
		root :to => "index#intro"
		match ":controller(/:action(/:id))", :via => [:post, :get]
		resources :posts
	end

end
