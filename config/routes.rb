Rails.application.routes.draw do

  devise_for :users
	if Time.zone.now.hour < 12 and Time.zone.now.hour > 14
		root :to => "index#timer" 
	else
		root :to => "index#intro"
		match ":controller(/:action(/:id))", :via => [:post, :get]
	end
end
