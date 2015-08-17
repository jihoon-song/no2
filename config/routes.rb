Rails.application.routes.draw do

  devise_for :users
	if Time.zone.now.hour < 20 and Time.zone.now.hour > 18
		root :to => "index#timer" 
	else
		root :to => "index#intro"
		match ":controller(/:action(/:id))", :via => [:post, :get]
	end
end
