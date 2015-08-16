Rails.application.routes.draw do

  devise_for :users
	if Time.zone.now.hour < 22 || Time.zone.now.hour > 5
		root :to => "index#timer" 
	else
		root :to => "index#intro"
	end
	match ":controller(/:action(/:id))", :via => [:post, :get]
end
