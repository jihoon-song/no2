Rails.application.routes.draw do

  devise_for :users
	if Time.zone.now.hour < 8 and Time.zone.now.hour > 24
		root :to => "index#timer" 
	else
		root :to => "index#intro"
		match ":controller(/:action(/:id))", :via => [:post, :get]
	end
end
